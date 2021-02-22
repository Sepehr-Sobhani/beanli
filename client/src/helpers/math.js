const accelerator = [
  // 400 beans = $100, 100$ = 200 beans (1b=50c), only earning bean on 1/2 of spend
  // so need 200 beans * 2 = 400 beans beans to be equivalent to $100
  // 400$/beans = 40000c/beans
  { name: "One-Cup-A-Day", min: 0, max: 40000, accelerator: 1 },
  { name: "Regular-Joe", min: 40000, max: 100000, accelerator: 1.5 },
  { name: "Purist", min: 100000, max: Infinity, accelerator: 2 },
];

export const beanDollarRatio = 0.5;
export const earnOnSpendRatio = 0.5;

export const convertCentsToDollars = function (price) {
  return (price / 100).toFixed(2);
};

export const beansEarned = function (centsCharged, accelerator, prev = 0) {
  const dollarNoCents = Math.floor(centsCharged / 100);
  const earnedBeforeRatio = Math.floor(dollarNoCents * accelerator) * 100;
  // user can only earn beans on price paid and only on a full dollar(no cents) and not total price charged
  // Ratio of beans is 50c:1 bean, user earns that on half the cash paid
  // The accelerator is also rounded down to prevent
  return (earnedBeforeRatio / beanDollarRatio) * earnOnSpendRatio + prev;
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
    return currentBeans;
  } else if (cartTotal - currentBeans * beanDollarRatio < 0) {
    return cartTotal * 2;
  }
  return currentBeans;
};

export const checkTier = function (lifetimeBeans) {
  return accelerator.filter(
    (e) => lifetimeBeans >= e.min && lifetimeBeans < e.max
  )[0];
};
