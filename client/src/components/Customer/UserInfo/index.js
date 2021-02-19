import "./styles.scss";
import Logo from "./Logo";
import WelcomeMessage from "./WelcomeMessage";
import CurrentBeans from "./CurrentBeans";
import LifetimeBeans from "./LifetimeBeans";
import Tier from "./Tier";
import { useContext } from "react";
import { appContext } from "../../appContext";

function UserInfo() {
  const { state } = useContext(appContext);
  const userData = state.user[0];

  return (
    <div className="user-info-container">
      <div className="filter">
        <div className="user-info-left-container">
          <div className="logo-welcome-container">
            <div className="logo">
              <Logo />
            </div>
          </div>
          <div className="user-tier-container">
            <Tier tier={userData.tier} />
          </div>
          <div className="welcome-message">
            <WelcomeMessage name={userData.username} />
          </div>
        </div>
        <div className="beans-container">
          <CurrentBeans currentBeans={userData.current_beans} />
          <LifetimeBeans lifetimeBeans={userData.lifetime_beans} />
        </div>
      </div>
    </div>
  );
}

export default UserInfo;
