import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import Root from './components/root';
// import { receiveSearchGiphys, fetchSearchGiphys } from './actions/giphy_actions';
// import * as APIUtil from './util/api_util';


document.addEventListener('DOMContentLoaded', () => {
  const store = configureStore();
  const root = document.getElementById('root');
  // window.store = store;
  // window.receiveSearchGiphys = receiveSearchGiphys;
  // window.fetchSearchGiphys = fetchSearchGiphys;
  ReactDOM.render(<Root store={store} />, root);
});
