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
    const generateTimeStamp = (date) => {
      const year = date.getFullYear();
      const month = `0${date.getMonth() + 1}`.slice(-2);
      const day = date.getDate();
      const time = `${date.getHours()}:${date.getMinutes()}:${date.getSeconds()}`;
      return `${year}-${month}-${day} ${time}`;
    };

    const completeOrder = {
      time_created: generateTimeStamp(new Date(Date.now())),
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
    const beansEarnedForTransaction = beansEarned(
      props.order.total,
      accelerator
    );
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

    const log = () => {
      console.log("********************************");
      console.log("UserID:", userId);
      console.log("OrderTotal-CashSpent:", props.order.total);
      console.log("beansSpent:", beansSpent);
      console.log("prevCurrentBeans:", currentBeans);
      console.log("beansEarned:", beansEarnedForTransaction);
      console.log("newCurrentBeans:", newCurrent);
      console.log("currentLifeTimeBeans:", currentLifetimeBeans);
      console.log("newLifetimeBeans:", newLifetime);
      console.log("prevTier:", tier);
      console.log("newTier", newTier);
      console.log("Currentaccelerator", accelerator);
      console.log("newAccelerator", newAccelerator);
      console.log("********************************");
    };

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

        log();

        await postOrder(order);
        await updateBeans(
          userId,
          newCurrent,
          newLifetime,
          newTier,
          newAccelerator,
          beansEarnedForTransaction
        );

        props.handleClose();
        history.push("/orderconfirmed");
      } else {
        setError(error);
        setFormState("error");
      }
    } else {
      log();

      await postOrder(order);
      await updateBeans(
        userId,
        newCurrent,
        newLifetime,
        newTier,
        newAccelerator,
        beansEarnedForTransaction
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
        {props.order.total === 0 && (
          <p id="free">Thanks for your beans, this one's on us!</p>
        )}
        <label htmlFor="mobile">Your order confirmation will be sent to:</label>
        <input
          id="mobile"
          name="mobile"
          placeholder="mobile"
          value={mobile}
          maxLength={12}
          onChange={(event) => handleMobileChange(event.target.value)}
        />
        {props.order.total > 0 && <CardElement options={CardElementOptions} />}
      </div>
      {formState === "error" && <p id="error">{error.message}</p>}
      <div>
        <button
          className="pay-button"
          disabled={formState === "submitting"}
          type="submit"
        >
          {props.order.total !== 0
            ? `Pay $${convertCentsToDollars(props.order.total)}`
            : `continue`}
        </button>
      </div>
    </form>
  );
}
