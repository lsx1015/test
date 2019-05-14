import React from 'react';
// import logo from './logo.svg';
import './App.css';
import List  from './day01/list'

function App() {
  let msg = "hello react  cao";
  let dd = [1,2,3,4,5,6];
  return (
    <div className="App">
      {msg}
      <List data={['tom',"hi","tech"]}/>
      <List data = {dd}/>
    </div>
  );
}

export default App;
