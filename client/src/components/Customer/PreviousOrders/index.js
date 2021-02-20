import { Button } from "@material-ui/core";
import Card from "@material-ui/core/Card";
import CardContent from "@material-ui/core/CardContent";
import CardMedia from "@material-ui/core/CardMedia";
import { useContext } from "react";
import { convertCentsToDollars } from "../../../helpers/math";
import { getOrdersInfo } from "../../../helpers/selectors";
import { appContext } from "../../appContext";
import { getTotal } from "../../../helpers/getTotal";
import bean from "../../../assets/logo/beans.png";

import "./styles.scss";

function PreviousOrders() {
  const { state } = useContext(appContext);
  console.log("state orders ", state.orders);

  const prevOrders = getOrdersInfo(state.orders);

  const reorder = (orderId) => {
    console.log(`I will order ${orderId}`);
  };

  const previous = prevOrders.map((order) => {
    return (
      <div className="prev-order-container">
        {order.orderItems.map((item) => {
          return (
            <div className="prev-orders">
              <Card className="root">
                <CardContent className="content">
                  <div className="order-item-details">
                    <p>{item.name}</p>
                  </div>
                  <div className="price-quantity-container">
                    <p>Qty: {item.quantity}</p>
                    <p>${convertCentsToDollars(item.price * item.quantity)}</p>
                  </div>
                </CardContent>
                <CardMedia
                  className="cover"
                  image={item.image}
                  title={item.name}
                />
              </Card>
            </div>
          );
        })}

        <div className="reorder-container">
          <p>Total ${convertCentsToDollars(order.totalPrice)}</p>
          {order.totalPrice < getTotal(order.orderItems) && (
            <img src={bean} alt="Bean" width="30" height="30"></img>
          )}
          <Button
            style={{ position: "inherit" }}
            variant="contained"
            onClick={() => reorder(order.id)}
          >
            Reorder
          </Button>
        </div>
      </div>
    );
  });

  return (
    <div>
      <h3 className="prev-order-title">Previous Orders</h3>
      {previous}
    </div>
  );
}

export default PreviousOrders;
