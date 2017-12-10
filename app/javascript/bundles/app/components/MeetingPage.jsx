import PropTypes from 'prop-types';
import React from 'react';
import MeetingsList from './MeetingsList';

export default class MeetingPage extends React.Component {
  static propTypes = {
    meetings: PropTypes.array.isRequired,
  };

  // /**
  //  * @param props - Comes from your rails view.
  //  */
  constructor(props) {
    // How to set initial state in ES6 class syntax
    // https://facebook.github.io/react/docs/reusable-components.html#es6-classes
    // this.state = { name: this.props.name };
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
