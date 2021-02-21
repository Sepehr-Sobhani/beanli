import StoreNav from "./StoreNav";
import "./styles.scss";
import React, { useState, useEffect, useRef } from "react";
import { DragDropContext } from "react-beautiful-dnd";
import OrderColumns from "./OrdersDashboard/OrderColumns";
import axios from "axios";
import { orderOrganizer } from "../../helpers/selectors";
import { useInterval } from "../../helpers/useInterval";

const dndColumns = {
  1: {
    name: "Orders",
    items: [],
  },
  2: {
    name: "Completed",
    items: [],
  },
};

const StoreOwner = () => {
  const [columns, setColumns] = useState(dndColumns);
  // Store id is hard coded here
  const [storeId, setStoreId] = useState(1);
  const [orderUpdPar, setOrderUpdPar] = useState({ id: "", username: "" });

  console.log("ORDER UPDATE PAR: ", orderUpdPar);
  console.log("ORDER column:", columns["1"]);
  console.log("Completed column:", columns["2"]);

  const onDragEnd = (
    { source, destination },
    columns,
    setColumns,
    orderUpdPar,
    setOrderUpdPar
  ) => {
    //Returns order to the same place if no destination has set
    if (!destination) return;

    //Takes order to a new column
    if (source.droppableId !== destination.droppableId) {
      const sourceColumn = columns[source.droppableId];
      const destColumn = columns[destination.droppableId];
      const sourceItems = [...sourceColumn.items];
      const destItems = [...destColumn.items];
      const [removed] = sourceItems.splice(source.index, 1);
      destItems.splice(destination.index, 0, removed);
      setColumns({
        ...columns,
        [source.droppableId]: {
          ...sourceColumn,
          items: sourceItems,
        },
        [destination.droppableId]: {
          ...destColumn,
          items: destItems,
        },
      });
      setOrderUpdPar({
        ...orderUpdPar,
        id: sourceColumn.items[source.index].id,
        username: sourceColumn.items[0].username,
      });
    } else {
      //Takes back the order to the same column
      const column = columns[source.droppableId];
      const copiedItems = [...column.items];
      const [removed] = copiedItems.splice(source.index, 1);
      copiedItems.splice(destination.index, 0, removed);
      setColumns({
        ...columns,
        [source.droppableId]: {
          ...column,
          items: copiedItems,
        },
      });
    }
  };

  useInterval(() => {
    axios
      .get(`/api/stores/orders/${storeId}`)
      .then((result) => {
        if (!result.data.message) {
          const data = orderOrganizer(result.data);
          setColumns((prev) => ({
            ...prev,
            1: {
              ...prev["1"],
              items: data,
            },
          }));
        }
      })
      .catch((err) => console.error({ error: err.message }));
  }, 5000);

  // To send SMS when order is completed
  const isFirstRun = useRef(true);
  useEffect(() => {
    if (isFirstRun.current) {
      isFirstRun.current = false;
      return;
    }

    //Removes first item in the completed order column
    const completedItemCounter = columns["2"].items.reduce((acc, cur) => {
      return acc + cur.orders.length;
    }, 0);

    if (completedItemCounter >= 6) {
      columns["2"].items.pop();
      console.log("More Than 6 here: ", columns["2"].items);
    }

    const orderUpdateParams = {
      store_id: storeId,
      order_id: orderUpdPar.id,
      username: orderUpdPar.username,
    };

    axios
      .put("/api/order", orderUpdateParams)
      .then(() => {
        console.log("ORDER UPDATED");
        //   const confirmMessage = {
        //     message: {
        //       to: "+16044404033",
        //       body: `Dear ${username}, Your order is Ready!! Enjoy!!`,
        //     },
        //   };
        //   axios.post("/api/messages", confirmMessage);
      })
      .catch((err) => console.error({ error: err.message }));
  }, [orderUpdPar]);

  return (
    <div>
      <StoreNav />
      <div className="dnd-container">
        <DragDropContext
          onDragEnd={(result) =>
            onDragEnd(result, columns, setColumns, orderUpdPar, setOrderUpdPar)
          }
        >
          {Object.entries(columns).map(([columnId, column], index) => {
            return (
              <div className="dnd-column-container" key={columnId}>
                <h2 className="column-header">{column.name}</h2>
                <OrderColumns key={index} column={column} columnId={columnId} />
              </div>
            );
          })}
        </DragDropContext>
      </div>
    </div>
  );
};

export default StoreOwner;
