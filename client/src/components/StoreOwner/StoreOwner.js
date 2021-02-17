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

const onDragEnd = ({ source, destination }, columns, setColumns) => {
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

const StoreOwner = () => {
  const [columns, setColumns] = useState(dndColumns);
  // Store id is hard coded here
  const [storeId, setStoreId] = useState(1);

  // useInterval(() => {
    axios
      .get(`/api/stores/orders/${storeId}`)
      .then((result) => {
        console.log(result);
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
  }, 4000);

  // To send SMS when order is completed
  const completedOrder = columns["2"].items.length;
  const isFirstRun = useRef(true);
  useEffect(() => {
    if (isFirstRun.current) {
      isFirstRun.current = false;
      return;
    }
    const orderUpdatePramas = {
      store_id: storeId,
      username: columns["2"].items[completedOrder - 1].username,
    };

    axios.put("/api/order", orderUpdatePramas).then(() => {
      console.log("order updated!!");
    });
  }, [completedOrder]);

  return (
    <div>
      <StoreNav />
      <div className="dnd-container">
        <DragDropContext
          onDragEnd={(result) => onDragEnd(result, columns, setColumns)}
        >
          {Object.entries(columns).map(([columnId, column], index) => {
            return (
              <div className="dnd-column-container" key={columnId}>
                <h2>{column.name}</h2>
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
