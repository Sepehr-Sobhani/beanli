import { CardElement, useStripe, useElements } from "@stripe/react-stripe-js";
import { useHistory } from "react-router-dom";
import { useContext, useState } from "react";
import { appContext } from "../../appContext";

import "./style.scss";
import {
  beansEarned,
  checkTier,
  convertCentsToDollars,
} from "../../../helpers/math";

export default function PaymentForm(props) {
  const { state, postOrder, updateBeans } = useContext(appContext);
  const [formState, setFormState] = useState("idle");
  const [error, setError] = useState(null);
  const [mobile, setMobile] = useState(state.user[0].phone_number);
  const stripe = useStripe();
  const elements = useElements();
  const history = useHistory();

  // Creating the order object that will be posted to the DB
  const orderData = (order) => {
    const d = new Date(Date.now());
    let dateString = `${d.getFullYear()}-${d.getMonth()}-${d.getDay()} ${d.getHours()}:${d.getMinutes()}:${d.getSeconds()}`;

    const completeOrder = {
      time_created: dateString,
      total_price: order.total,
      completed: false,
      user_id: state.currentUser,
      store_id: state.currentStore,
      order_items: [],
    };
    order.cart.forEach((e) => {
      const order = { menu_item_id: e.menuItemId };
      let quantityCounter = e.quantity;
      while (quantityCounter > 0) {
        completeOrder.order_items.push(order);
        quantityCounter--;
      }
    });
    return completeOrder;
  };

  const order = orderData(props.order);

  const handleSubmit = async (event) => {
    event.preventDefault();
    setFormState("submitting");

    // Calculating new values for CurrentBeans, LifetimeBeans, Tier and Accelerator
    const userId = state.currentUser;
    const {
      accelerator,
      tier,
      current_beans: currentBeans,
      lifetime_beans: currentLifetimeBeans,
    } = state.user[0];
    const beansSpent = props.beansSpent;
    const newCurrent =
      currentBeans - beansSpent + beansEarned(props.order.total, accelerator);
    const newLifetime = beansEarned(
      props.order.total,
      accelerator,
      currentLifetimeBeans
    );
    const { name: newTier, accelerator: newAccelerator } = checkTier(
      newLifetime
    );

    if (!stripe || !elements) {
      // Stripe.js has not loaded yet. Make sure to disable
      // form submission until Stripe.js has loaded.
      return;
    }

    if (order.total_price !== 0) {
      const { error, token } = await stripe.createToken(
        elements.getElement(CardElement)
      );

      if (token) {
        setError(null);
        setFormState("submitted");

        console.log("********************************");
        console.log("OrderTotal-CashSpent:", props.order.total);
        console.log("beansSpent:", beansSpent);
        console.log("UserID:", userId);
        console.log("currentLifeTimeBeans:", currentLifetimeBeans);
        console.log("newCurrentBeans:", newCurrent);
        console.log("newLifetimeBeans:", newLifetime);
        console.log("prevTier:", tier);
        console.log("Currentaccelerator", accelerator);
        console.log("newTier", newTier);
        console.log("newAccelerator", newAccelerator);
        console.log("********************************");

        await postOrder(order);
        await updateBeans(
          userId,
          newCurrent,
          newLifetime,
          newTier,
          newAccelerator
        );

        props.handleClose();
        history.push("/orderconfirmed");
      } else {
        setError(error);
        setFormState("error");
      }
    } else {
      await postOrder(order);
      await updateBeans(
        userId,
        newCurrent,
        newLifetime,
        newTier,
        newAccelerator
      );
      props.handleClose();
      history.push("/orderconfirmed");
    }
  };

  const CardElementOptions = {
    style: {
      base: {
        color: "rgb(97, 85, 68)",
        "::placeholder": {
          color: "rgb(97, 85, 68)",
        },
      },
      invalid: {
        color: "red",
        iconColor: "red",
      },
    },
    hidePostalCode: true,
  };

  const handleMobileChange = (number) => {
    console.log(number);
    setMobile(number.replace(/(\d{3})(\d{3})(\d{4})/, "($1) $2-$3"));
  };

  return (
    <form className="payment-form" onSubmit={handleSubmit}>
      <div id="input">
        <p>Your order confirmation will be sent to:</p>
        <input
          name="mobile"
          placeholder="mobile"
          value={mobile}
          maxLength={12}
          onChange={(event) => handleMobileChange(event.target.value)}
        />
        {props.order.total > 0 && <CardElement options={CardElementOptions} />}
        {props.order.total === 0 && (
          <p>Congratulations! You redeemed enough beans for a free order.</p>
        )}
      </div>
      <div></div>
      {formState === "error" && <h5>{error.message}</h5>}
      <div>
        <button
          className="pay-button"
          disabled={formState === "submitting"}
          type="submit"
        >
          {props.order.total !== 0
            ? `Pay ${convertCentsToDollars(props.order.total)}`
            : `continue`}
        </button>
      </div>
    </form>
  );
}
