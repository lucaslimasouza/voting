class Admin::JobRolesController < ApplicationController
  def new
    meeting = Meeting.find(params[:meeting_id])
    @job_role = meeting.job_roles.build
    respond_with @job_role
  end

  def create
  end

  def show
  end
end
