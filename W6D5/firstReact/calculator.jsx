import React from 'react';

class Calculator extends React.Component {
  constructor(props) {
    super(props);
    // your code here
    this.state = { input1: "", input2: "", result: 0 };
  }

  // your code here

  render() {
    return (
      <div>
        <input></input>
        <h1>{ this.state.result }</h1>

      </div>
    );
  }
}

export default Calculator;
