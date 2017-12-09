class Admin::JobRolesController < ApplicationController
  def new
    meeting = Meeting.find(params[:meeting_id])
    @job_role = meeting.job_roles.build
    3.times { @job_role.candidates.build }
    respond_with @job_role
  end

  def create
    @job_role = JobRole.create(job_role_params)
    3.times { @job_role.candidates.build } if @job_role.candidates.empty?
    respond_with :admin, @job_role
  end

  def show
    @job_role = JobRole.find params[:id]
    respond_with @job_role
  end

  private
    def job_role_params
      params.require(:job_role).permit(
        :name,
        :meeting_id,
        candidates_attributes: [:id, :name]
      )
    end
end
