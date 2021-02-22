import { useContext, useEffect, useState } from "react";
import Slider from "@material-ui/core/Slider";
import { appContext } from "../../appContext";
import {
  beanDollarRatio,
  maxForSlider,
  totalFromCart,
} from "../../../helpers/math";

export default function BeanSlider(props) {
  const totalInCart = totalFromCart(props.total);

  const totalItemsInCart = props.total.reduce(
    (sum, cur) => sum + cur.quantity,
    0
  );

  const [sliderView, setSliderView] = useState(0);
  const [sliderValue, setSliderValue] = useState(0);
  const context = useContext(appContext);

  const userBeans = context.state.user[0].current_beans;
  const handleChange = (event, newValue) => {
    setSliderView(newValue);
  };

  useEffect(() => {
    setSliderView(0);
    setSliderValue(0);
  }, [totalItemsInCart]);

  const handleChangeCommitted = (event, newValue) => {
    if (newValue > sliderValue) {
      props.removeFromTotal(newValue - sliderValue);
    } else if (newValue < sliderValue) {
      props.addToTotal(sliderValue - newValue);
    }
    props.setBeansSpent(newValue);
    setSliderValue(newValue);
  };

  return (
    <div className="slider-container">
      <Slider
        value={sliderView}
        step={100}
        min={0}
        max={maxForSlider(userBeans, totalInCart, beanDollarRatio)}
        onChange={handleChange}
        onChangeCommitted={handleChangeCommitted}
        valueLabelDisplay="auto"
        // Allows slider to show user bean in a Dollar context
        valueLabelFormat={(value) => Math.floor(value / 100)}
        style={{ color: "#615544" }}
      />
    </div>
  );
}
