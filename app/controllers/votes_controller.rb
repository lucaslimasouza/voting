class VotesController < ApplicationController
  layout "meeting"
  before_action :authenticate_user!

  def create
    @vote = Vote.new(vote_params)
    @vote.save
    respond_with @vote, location: root_path
  end

  private
    def vote_params
      params
        .require(:vote)
        .permit(:candidate_id)
        .merge({user_id: current_user.id})
    end
end
