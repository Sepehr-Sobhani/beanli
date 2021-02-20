import { useContext } from "react";
import { appContext } from "../../appContext";

import { beansEarned, convertCentsToDollars } from "../../../helpers/math";
import { getOrdersInfo } from "../../../helpers/selectors";

export default function StoreSummary(props) {
  const context = useContext(appContext);
  const orders = context.state.orders;
  const { totalPrice: mostRecentTotal, orderItems } = getOrdersInfo(orders)[
    "0"
  ];
  const userAccelerator = context.state.user[0].accelerator;
  const beansEarnedForDisplay = Math.floor(beansEarned(userAccelerator, mostRecentTotal) / 100)

  return (
    <div>
      <h3>Order Summary</h3>
      <p>
        {`You have earned ${beansEarnedForDisplay} bean${beansEarnedForDisplay!==1 ? 's' : ''}!`}
      </p>
      <div className="orders-container">
        {orderItems.map((item) => {
          return (
            <div className="item-container">
              <p>{item.name}</p>
              <p>${convertCentsToDollars(item.price)}</p>
            </div>
          );
        })}
      </div>
      <p>total: ${convertCentsToDollars(mostRecentTotal)}</p>
    </div>
  );
}