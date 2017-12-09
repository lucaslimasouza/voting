import { connect } from 'react-redux';
import MeetingPage from '../components/MeetingPage';
import * as actions from '../actions/RootActions';

const mapStateToProps = (state) => ({ meetings: state.meetings });

// Don't forget to actually use connect!
// Note that we don't export HelloWorld, but the redux "connected" version of it.
// See https://github.com/reactjs/react-redux/blob/master/docs/api.md#examples
export default connect(mapStateToProps, actions)(MeetingPage);
