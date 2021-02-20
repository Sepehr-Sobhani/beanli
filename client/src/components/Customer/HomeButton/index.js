import Fab from "@material-ui/core/Fab";
import CloseIcon from "@material-ui/icons/Close";

import { useHistory } from "react-router-dom";

const fabStyle = {
  height: 30,
  width: 30,
  opacity: "50%",
  backgroundColor: "black",
};

function HomeButton() {
  const history = useHistory();

  const goHome = () => {
    history.push("/");
  };

  return (
    <div className="home-button">
      <Fab style={fabStyle} aria-label="add" onClick={goHome}>
        <CloseIcon style={{ color: "white" }} />
      </Fab>
    </div>
  );
}

export default HomeButton;
