import React from "react";

import "bootstrap/dist/css/bootstrap.min.css";
import "bootstrap/dist/js/bootstrap.bundle";

// importing components
import Navbar from "./components/Navbar";
import Login from "./pages/Login";
import Feed from "./pages/Feed";

import "./css/styles.css";

import { BrowserRouter as Router, Switch, Route } from "react-router-dom";

function App() {
  return (
    <div>
      <Router>
        <Switch>
          <Route path="/login" exact component={Login} />
          <Route path="/feed" exact component={Feed} />
        </Switch>
      </Router>
    </div>
  );
}

export default App;
