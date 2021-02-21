import GridList from "@material-ui/core/GridList";
import GridListTile from "@material-ui/core/GridListTile";
import GridListTileBar from "@material-ui/core/GridListTileBar";
import IconButton from "@material-ui/core/IconButton";
import AddIcon from "@material-ui/icons/Add";
import { useContext } from "react";
import { filterMenuItems } from "../../../helpers/selectors";
import { appContext } from "../../appContext";
import "./styles.scss";
import React from 'react'

export default function Menu(props) {
  const { state } = useContext(appContext);

  const handleClick = (id, name, price) => {
    props.updateCart(id, name, price);
  };
  if (!state.menuItems.message) {
  return Object.entries(filterMenuItems(state.menuItems)).map(
    ([key, value], index) => {
      return (
        <React.Fragment key={index}>
          <div className="menu-category-title">{key}</div>
          <div className="category-container">
            <GridList
              style={{ flexWrap: "nowrap" }}
              className="menuList"
              cols={2.5}
            >
              {value.map((tile) => (
                <GridListTile
                  key={tile.id}
                  onClick={() => handleClick(tile.id, tile.name, tile.price)}
                >
                  <img src={tile.image} alt={tile.name}/>
                  <GridListTileBar
                    className="titleBar"
                    title={tile.name}
                    actionIcon={
                      <IconButton aria-label={`star ${tile.title}`}>
                        <AddIcon className="title"/>
                      </IconButton>
                    }
                  />
                </GridListTile>
              ))}
            </GridList>
          </div>
          </React.Fragment>
      );
    }
  );
  } else {
    return null;
  }

}
