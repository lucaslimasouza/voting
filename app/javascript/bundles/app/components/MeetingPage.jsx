import PropTypes from 'prop-types';
import React from 'react';
import MeetingsList from './MeetingsList';

export default class MeetingPage extends React.Component {
  static propTypes = {
    meetings: PropTypes.array.isRequired,
  };

  constructor(props) {
    super(props);
  }

  render() {
    return (
      <div>
        <h1>Meetings</h1>
        <MeetingsList meetings={ this.props.meetings } />
      </div>
    );
  }
}
