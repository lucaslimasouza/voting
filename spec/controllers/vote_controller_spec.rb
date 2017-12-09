require 'rails_helper'

RSpec.describe VotesController, type: :controller do
  login_user

  describe "POST #create" do
    it "creates new vote to candidate id" do
      candidate = create(:candidate)
      expect{
        post :create, params: {
          vote: attributes_for(:vote, candidate_id: candidate.id)
        }
      }.to change(Vote, :count).by(1)
    end
  end

end
