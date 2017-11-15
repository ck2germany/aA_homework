import React from 'react';

import GiphysIndex from './giphys_index';

class GiphysSearch extends React.Component {
  constructor () {
    super();
    this.state = { searchTerm: "kitten"};
    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleChange (e) {
    e.preventDefault();
    this.setState({ searchTerm: e.currentTarget.value });
  }

  handleSubmit (e) {
    e.preventDefault();
    let searchTerm = this.state.searchTerm.split(' ').join('+');
    this.props.fetchSearchGiphys(searchTerm);
  }

  render () {
    let { giphys } = this.props;
    return (
      <div>
        <form>
          <input type="text" onChange={ this.handleChange} value={ this.state.searchTerm} ></input>
          <button type='submit' onClick={ this.handleSubmit }>Get Giphs!</button>
        </form>
        <GiphysIndex giphys={ giphys }/>
      </div>
    );

  }
}

export default GiphysSearch;
