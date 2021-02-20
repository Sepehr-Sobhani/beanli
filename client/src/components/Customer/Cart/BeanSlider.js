import { useContext, useState } from "react";
import Slider from "@material-ui/core/Slider";
import { appContext } from "../../appContext";
import {
  beanDollarRatio,
  maxForSlider,
  totalFromCart,
} from "../../../helpers/math";

export default function BeanSlider(props) {
  console.log(totalFromCart(props.total));

  const totalInCart = totalFromCart(props.total);

  const [sliderView, setSliderView] = useState(0);
  const [sliderValue, setSliderValue] = useState(0);
  const context = useContext(appContext);

  const userBeans = context.state.user[0].current_beans;
  const handleChange = (event, newValue) => {
    setSliderView(newValue);
  };

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
    <Slider
      value={sliderView}
      min={0}
      max={maxForSlider(userBeans, totalInCart, beanDollarRatio)}
      onChange={handleChange}
      onChangeCommitted={handleChangeCommitted}
      valueLabelDisplay="auto"
      // Allows slider to show user bean in a Dollar context
      valueLabelFormat={(value) => Math.floor(value / 100)}
    />
  );
}
