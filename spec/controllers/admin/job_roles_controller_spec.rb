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

    it 'return new instance of JobRole' do
      get :new, params: { meeting_id: create(:meeting).id }
      expect(assigns(:job_role)).to be_new_record
    end

    it 'return new instance of JobRole with meeting' do
      meeting = create(:meeting)
      get :new, params: { meeting_id: meeting.id }
      expect(assigns(:job_role).meeting.id).to eq meeting.id
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
