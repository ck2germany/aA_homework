import React from 'react';

import GiphysIndexItem from './giphys_index_item';

class GiphysIndex extends React.Component {
  constructor() {
    super();
  }

  render () {
    let { giphys } = this.props
    return (
      <div>
        <h1>Index goes here</h1>
        <ul>
          {
            giphys.forEach((giph) => <li>giph goes here</li>)
          }
        </ul>
      </div>
  );
  }
}

export default GiphysIndex;
