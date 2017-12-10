import { connect } from 'react-redux';
import MeetingPage from '../components/MeetingPage';

const mapStateToProps = (state) => ({ meetings: state.meetings });
export default connect(mapStateToProps)(MeetingPage);
