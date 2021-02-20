const accelerator = [
  {name: "One-Cup-A-Day", min: 0, max: 40000, accelerator: 1 },
  {name: "Regular-Joe", min: 40000, max: 100000, accelerator: 1.5 },
  {name: "Purist", min: 100000, max: Infinity,  accelerator: 2 },
];

export const beanDollarRatio = 0.5;

export const convertCentsToDollars = function (price) {
  return (price / 100).toFixed(2);
};

export const beansEarned = function (accelerator, centsCharged, prev = 0) {
  // user can only earn beans on price charged and not total price
  return centsCharged * beanDollarRatio * accelerator + prev;
};

export const totalFromCart = function (cart) {
  return cart.reduce((sum, cur) => sum + cur.price * cur.quantity, 0);
};

export const maxForSlider = function (
  currentBeans,
  cartTotal,
  beanDollarRatio
) {
  if (cartTotal - currentBeans * beanDollarRatio === 0) {
    console.log("correct amount of beans");
    return currentBeans;
  } else if (cartTotal - currentBeans * beanDollarRatio < 0) {
    console.log("more beans than cart");
    return cartTotal;
  }
  console.log("more cart than beans");
  return currentBeans;
};

export const checkTier = function (lifetimeBeans) {
  return (accelerator.filter((e)=>lifetimeBeans > e.min && lifetimeBeans < e.max))[0]
}
