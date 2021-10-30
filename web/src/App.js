import React from "react";

import "bootstrap/dist/css/bootstrap.min.css";
import "bootstrap/dist/js/bootstrap.bundle";

// importing components
import Navbar from "./components/Navbar";
import Login from "./pages/Login";
import Feed from "./pages/Feed";

import { checkLogin } from "./hooks/useLogin";

import "./css/styles.css";

import { BrowserRouter as Router, Switch, Route, Redirect } from "react-router-dom";

function App() {
  const loggedIn = checkLogin()
  return (
    <div>
      <Router>
        <Switch>
          <Route exact path='/'>
          {/* {loggedIn ? <Redirect to="/feed" /> : <Redirect to="/login" />} */}
          </Route>
          <Route exact path='/login'>
          {/* {loggedIn ? <Redirect to="/feed" /> : <Login />} */}
          <Login />
          </Route>
          <Route exact path='/feed'>
          {/* {loggedIn ? <Feed /> : <Redirect to="/login" />} */}
          <Feed />
          </Route>
        </Switch>
      </Router>
    </div>
  );
}

export default App;
