import Logout from "./Logout";
import OrderHistory from "./OrderHistory";

import "./styles.scss";

function UserNav() {
  return (
    <div className="user-nav-container">
      <OrderHistory route="/" />
      <Logout route="/" />
    </div>
  );
}

export default UserNav;
