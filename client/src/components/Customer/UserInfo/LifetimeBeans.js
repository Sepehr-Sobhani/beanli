function LifetimeBeans(props) {
  const lifetimeBeans = props.lifetimeBeans;

  return (
    <div className="beans-status">
      <p>Lifetime beans</p>
      <h3>{lifetimeBeans}</h3>
    </div>
  );
}

export default LifetimeBeans;
