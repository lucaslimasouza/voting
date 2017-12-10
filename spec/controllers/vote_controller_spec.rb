require 'rails_helper'

RSpec.describe VotesController, type: :controller do
  login_user

  describe "POST #create" do
    it "creates new vote to candidate id" do
      candidate = create(:candidate)
      job_role = create(:job_role)
      expect{
        post :create, params: {
          vote: attributes_for(:vote,
            candidate_id: candidate.id,
            job_role_id: job_role.id
          )
        }
      }.to change(Vote, :count).by(1)
    end
  end

  describe "GET #new" do
    let(:job_role) { create(:job_role) }

    it "returns http success" do
      get :new, params: { job_role_id: job_role.id }
      expect(response).to have_http_status(:success)
    end

    context 'new instance' do
      it 'return Vote' do
        get :new, params: { job_role_id: job_role.id }
        expect(assigns(:vote)).to be_new_record
      end
    end
  end
end
