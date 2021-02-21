import { Link } from "react-router-dom";
import HistoryIcon from "@material-ui/icons/History";

function OrderHistory(props) {
  return (
    <Link className="order-history-button" to="/history">
      Order History
      <HistoryIcon style={{ marginLeft: "0.5rem" }} />
    </Link>
  );
}

export default OrderHistory;
