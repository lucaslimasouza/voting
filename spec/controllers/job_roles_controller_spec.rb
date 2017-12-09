require 'rails_helper'

RSpec.describe JobRolesController, type: :controller do

  describe "GET #show" do
    let(:job_role) { job_role = create(:job_role) }

    it "returns http success" do
      get :show, params: { id: job_role.to_param }
      expect(response).to have_http_status(:success)
    end

    it "assigns JobRole requested" do
      get :show, params: { id: job_role.to_param }
      expect(assigns(:job_role).id).to eq job_role.id
    end
  end

end
