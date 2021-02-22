import { Route, BrowserRouter as Router, Switch } from "react-router-dom";
import { appContext } from "./appContext";

import Customer from "./Customer/Customer";
import StoreOwner from "./StoreOwner/StoreOwner";
import applicationData from "../hooks/useApplicationData";

import "./App.scss";

export default function App() {
  const { state, setStore, postOrder, updateBeans } = applicationData();

  // get the user using selector function here:
  const user = {
    username: "test user",
    type: "customer",
  };

  const customer = user.type === "customer";
  const storeOwner = user.type === "store owner";

  return (
    <appContext.Provider value={{ state, setStore, postOrder, updateBeans }}>
      <Router>
        <Switch>
          <Route path="/customer">
            <Customer />
          </Route>
          <Route path="/storeowner/:store_id">
            <StoreOwner />
          </Route>
        </Switch>
      </Router>
    </appContext.Provider>
  );
}
