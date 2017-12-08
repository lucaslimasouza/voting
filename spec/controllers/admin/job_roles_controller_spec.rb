require 'rails_helper'

RSpec.describe Admin::JobRolesController, type: :controller do

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #create" do
    it "returns http success" do
      post :create
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      job_role = create(:job_role)
      get :show, params: { id: job_role.to_param }
      expect(response).to have_http_status(:success)
    end
  end

end
