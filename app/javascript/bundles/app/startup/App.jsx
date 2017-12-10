import React from 'react';
import { Provider } from 'react-redux';
import configureStore from '../store/Store';
import Meeting from '../containers/Meeting';

const App = (props) => (
  <Provider store={configureStore(props)}>
    <Meeting />
  </Provider>
);

export default App;
