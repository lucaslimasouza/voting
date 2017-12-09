# frozen_string_literal: true

class JobRolesController < ApplicationController
  layout "meeting"

  def show
    @job_role = JobRole.find params[:id]
    respond_with @job_roles
  end
end
