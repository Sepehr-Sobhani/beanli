import { useHistory } from "react-router-dom";

import { Modal } from "@material-ui/core";
import RemoveIcon from "@material-ui/icons/Remove";
import AddIcon from "@material-ui/icons/Add";

import BeanSlider from "./BeanSlider";

import "./styles.scss";
import { convertCentsToDollars } from "../../../helpers/math";

function Cart(props) {
  const history = useHistory();

  // 1 bean = 50c
  const removeFromTotal = (beans) => {
    props.setTotal(props.total - beans * 0.5);
  };
  const addToTotal = (beans) => {
    props.setTotal(props.total + beans * 0.5);
  };

  const handleSubmit = (event) => {
    history.push("/checkout");
    event.preventDefault();
  };

  const cart = (
    <div className="cart-data">
      <h1>Your cart</h1>
      <form autoComplete="off" onSubmit={(event) => handleSubmit(event)}>
        {props.cart.map((item, index) => {
          return (
            <div key={index}>
              {props.cart[index].quantity > 0 && (
                <div className="cart-item-container">
                  <p>{props.cart[index].name}</p>
                  <div className="input-control">
                    <RemoveIcon
                      onClick={(event) =>
                        props.setCart((prev) => {
                          const cartCopy = [...prev];
                          cartCopy[index].quantity -= 1;
                          // remove item from cart
                          cartCopy[index].quantity === 0 &&
                            cartCopy.splice(index, 1);
                          return cartCopy;
                        })
                      }
                    />
                    <input
                      value={props.cart[index].quantity}
                      onChange={(event) =>
                        props.setCart((prev) => {
                          const cartCopy = [...prev];
                          cartCopy[index].quantity = event.target.value;
                          return cartCopy;
                        })
                      }
                    />
                    <AddIcon
                      onClick={(event) =>
                        props.setCart((prev) => {
                          const cartCopy = [...prev];
                          cartCopy[index].quantity += 1;
                          return cartCopy;
                        })
                      }
                    />
                  </div>
                  <p>
                    $
                    {convertCentsToDollars(
                      item.price * props.cart[index].quantity
                    )}
                  </p>
                </div>
              )}
            </div>
          );
        })}
        <div className="cart-footer-text">
          <p>TOTAL: ${convertCentsToDollars(props.total)}</p>
          <p>Grind some beans?</p>
        </div>
        <BeanSlider
          removeFromTotal={removeFromTotal}
          addToTotal={addToTotal}
          beansSpent={props.beansSpent}
          setBeansSpent={props.setBeansSpent}
          total={props.cart}
        />
        <input type="submit" value="Bean me up Scottie!" />
      </form>
    </div>
  );

  return (
    <Modal open={props.showCart} onClose={props.handleClose}>
      {cart}
    </Modal>
  );
}

export default Cart;
