class VotesController < ApplicationController
  layout "voting"
  before_action :authenticate_user!

  def new
    @vote = Vote.new
    @vote.job_role = JobRole.find(params[:job_role_id])
    respond_with @vote
  end

  def create
    @vote = Vote.new(vote_params)
    @vote.save
    respond_with @vote, location: root_path
  end

  private
    def vote_params
      params
        .require(:vote)
        .permit(:candidate_id, :job_role_id)
        .merge({user_id: current_user.id})
    end
end
