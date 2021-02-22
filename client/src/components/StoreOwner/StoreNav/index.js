import ExitToAppIcon from "@material-ui/icons/ExitToApp";

import Logo from "../../Customer/UserInfo/Logo";
import WelcomeMessage from "../../Customer/UserInfo/WelcomeMessage";

import "./style.scss";

const StoreNav = () => {
  return (
    <div className="store-navbar">
      <div className="store-logo-welcome-container">
        <div className="store-logo">
          <Logo />
        </div>
        <div className="store-welcome-message">
          <WelcomeMessage name={"Travis"} />
        </div>
      </div>
      <div className="store-logout-manage-menu-container">
        <ExitToAppIcon />
      </div>
    </div>
  );
};

export default StoreNav;
