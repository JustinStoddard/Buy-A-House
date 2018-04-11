import React, { Component } from 'react';
import { Switch, Route } from 'react-router-dom';
import Available from './Available';
import NoMatch from './NoMatch';
import NavBar from './NavBar';
import Login from './Login';
import Register from './Register';
import Flash from './Flash';
import Home from './Home';
import ProtectedRoute from './ProtectedRoute';
import AuthRoute from './AuthRoute';
import FetchUser from './FetchUser';
import Cities from './Cities';
import FindHome from './FindHome';

class App extends Component {
  render() {
    return (
      <div>
        <NavBar />
        <Flash />
        <FetchUser>
          <Switch>
            <Route exact path='/findhome' component={FindHome} />
            <Route exact path='/cities' component={Cities} />
            <Route eaxct path='/available' component={Available} />
            <Route exact path='/' component={Home} />
            <AuthRoute exact path='/login' component={Login} />
            <AuthRoute exact path='/register' component={Register} />
            <Route component={NoMatch} />
          </Switch>
        </FetchUser>
      </div>
    );
  }
}

export default App;
