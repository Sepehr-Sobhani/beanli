import { useContext } from "react";
import { appContext } from "../../appContext";

import { convertCentsToDollars } from "../../../helpers/math";
import { getOrdersInfo } from "../../../helpers/selectors";

export default function StoreSummary() {
  const context = useContext(appContext);
  const orders = context.state.orders;
  const { totalPrice: mostRecentTotal, orderItems } = getOrdersInfo(orders)[
    "0"
  ];
  const beansEarnedForDisplay =
    context.state.user[0].recentOrderBeansEarned / 100 || 0;

  return (
    <>
      <h3>Order Summary</h3>
      <p id="beans-earned">
        {`You have earned ${beansEarnedForDisplay} bean${
          beansEarnedForDisplay !== 1 ? "s" : ""
        }!`}
      </p>
      <div className="orders-container">
        {orderItems.map((item, index) => {
          return (
            <div className="item-container" key={index}>
              <p className="item-name">{item.name}</p>
              <p>({item.quantity})</p>
              <p>${convertCentsToDollars(item.price * item.quantity)}</p>
            </div>
          );
        })}
      </div>
      <p id="order-total">Total: ${convertCentsToDollars(mostRecentTotal)}</p>
    </>
  );
}
