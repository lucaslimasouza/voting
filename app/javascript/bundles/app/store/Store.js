import { createStore } from 'redux';
import rootReducer from '../reducers/RootReducer';

const configureStore = (railsProps) => (
  createStore(rootReducer, railsProps)
);

export default configureStore;
