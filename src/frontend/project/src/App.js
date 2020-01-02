import React, {Component} from 'react';
import './App.css';

import ManageURL from './components/Manage/ManageURL';
import {BrowserRouter as Router} from "react-router-dom";
class App extends Component {
render() {
  
  return (
    <Router>
    <div className="App">
      <ManageURL/>
      
      </div>
      
    </Router>
  );
 }
}

export default App;

