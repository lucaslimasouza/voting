import PropTypes from 'prop-types';
import React from 'react';

const MeetingsList = ({ meetings }) => {

  const emptyMessage = <p>There no meetings yet</p>;
  const meetingsList = (
    <ul>{ meetings.map(meeting => <li key={meeting.id}>{meeting.name}</li>) }</ul>
  );

  return (
    <div>{ meetings.length == 0 ? emptyMessage : meetingsList }</div>
  );
};

MeetingsList.propTypes = {
  meetings: PropTypes.array.isRequired,
};

export default MeetingsList;
