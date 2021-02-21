import { useContext, useEffect } from "react";
import { appContext } from "../../appContext";

import StoreMap from "./StoreMap";
import OrderSummary from "./OrderSummary";

export default function OrderConfirmation(props) {
  const context = useContext(appContext);
  const collectionTime = Math.floor(Math.random() * 20) + 2;
  const store = context.state.stores[context.state.currentStore - 1];

  // reset cart state after an order is successful
  useEffect(() => {
    props.setCart([]);
    props.setTotal(0);
    props.setBeansSpent(0);
  }, []);

  return (
    <div className="order-summary">
      <h3>Cool Beans, thanks for your order!</h3>
      <p>
        Your order will be ready for collection in {collectionTime} minutes at{" "}
        {store.address}
      </p>
      <StoreMap
        lat={store.latitude}
        lon={store.longitude}
        address={store.address}
        name={store.name}
      />
      <OrderSummary cart={props.cart} total={props.total} />
    </div>
  );
}
