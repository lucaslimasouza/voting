import PropTypes from 'prop-types';
import React from 'react';

const MeetingsList = ({ meetings }) => {

  const emptyMessage = <p>There no meetings yet</p>;

  const jobList = (jobRoles) => {
    return jobRoles.map(job => {
      return <li key={job.id}>
              <a href={'/job_roles/' + job.id }>
                {job.name}
              </a>
            </li>;
    });
  };

  const meetingsList = () => {
    return meetings.map(meeting => {
      return <li key={meeting.id}>
          {meeting.name}
          <ul>
            { jobList(meeting.job_roles) }
          </ul>
        </li>;
    });
  };

  return (
    <div>{ meetings.length == 0 ? emptyMessage : meetingsList() }</div>
  );
};

MeetingsList.propTypes = {
  meetings: PropTypes.array.isRequired,
};

export default MeetingsList;
