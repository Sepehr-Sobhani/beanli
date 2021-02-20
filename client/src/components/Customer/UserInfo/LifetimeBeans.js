function LifetimeBeans(props) {
  const lifetimeBeans = props.lifetimeBeans;

  return (
    <div className="beans-status">
      <p>Lifetime beans</p>
      <h3>{Math.floor(lifetimeBeans / 100)}</h3>
    </div>
  );
}

export default LifetimeBeans;
