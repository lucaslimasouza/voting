class Admin::JobRolesController < ApplicationController
  def new
    meeting = Meeting.find(params[:meeting_id])
    @job_role = meeting.job_roles.build
    3.times { @job_role.candidates.build }
    respond_with @job_role
  end

  def create
    @job_role = JobRole.create(job_role_params)
    respond_with @job_role, location: admin_meetings_path
  end

  def show
  end

  private
    def job_role_params
      params.require(:job_role).permit(:name, :meeting_id)
    end
end
