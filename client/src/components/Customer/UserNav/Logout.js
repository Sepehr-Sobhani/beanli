import { Link } from "react-router-dom";
import ExitToAppIcon from "@material-ui/icons/ExitToApp";

function Logout(props) {
  return (
    <>
      <Link to="/">
        Log out
        <ExitToAppIcon style={{ marginLeft: "0.5rem" }} />
      </Link>
    </>
  );
}

export default Logout;
