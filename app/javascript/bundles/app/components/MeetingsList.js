import PropTypes from 'prop-types';
import React from 'react';

const MeetingsList = ({ meetings }) => {

  const emptyMessage = <p>There no meetings yet</p>;

  const jobList = (jobRoles) => {
    return jobRoles.map(job => {
      return <li className="list-group-item" key={job.id}>
              <a href={'/votes/new?job_role_id=' + job.id }>
                {job.name}
              </a>
            </li>;
    });
  };

  const meetingsList = () => {
    return meetings.map(meeting => {
      return <li className="list-group-item" key={meeting.id}>
          {meeting.name}
          <ul className="list-group">
            { jobList(meeting.job_roles) }
          </ul>
        </li>;
    });
  };

  return (
    <div>{ meetings.length == 0 ? emptyMessage : <ul className="list-group"> { meetingsList() } </ul> }</div>
  );
};

MeetingsList.propTypes = {
  meetings: PropTypes.array.isRequired,
};

export default MeetingsList;
