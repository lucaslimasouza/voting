class Admin::JobRolesController < ApplicationController
  def new
    meeting = Meeting.find(params[:meeting_id])
    @job_role = meeting.job_roles.build
    3.times { @job_role.candidates.build }
    respond_with @job_role
  end

  def create
  end

  def show
  end
end
