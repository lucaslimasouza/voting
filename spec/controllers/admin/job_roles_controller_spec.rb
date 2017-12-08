require 'rails_helper'

RSpec.describe Admin::JobRolesController, type: :controller do

  let(:meeting) { create(:meeting) }

  describe "GET #new" do
    it "returns http success" do
      get :new, params: { meeting_id: meeting.id }
      expect(response).to have_http_status(:success)
    end

    context 'new instance' do
      it 'return JobRole' do
        get :new, params: { meeting_id: meeting.id }
        expect(assigns(:job_role)).to be_new_record
      end

      it 'return JobRole with meeting' do
        get :new, params: { meeting_id: meeting.id }
        expect(assigns(:job_role).meeting.id).to eq meeting.id
      end

      it 'return JobRole instance with 3 candidates' do
        get :new, params: { meeting_id: meeting.id }
        expect(assigns(:job_role).candidates.length).to eq 3
      end
    end
  end

  describe "POST #create" do
    it "returns http success" do
      post :create, params: {
        job_role: attributes_for(:job_role, meeting_id: meeting.id)
      }
      expect(response).to redirect_to admin_job_role_url(JobRole.last)
    end

    context 'new JobRole' do
      it 'creates' do
        expect {
          post :create, params: {
            job_role: attributes_for(:job_role, meeting_id: meeting.id)
          }
        }.to change(JobRole, :count).by(1)
      end

      it 'creates with candidates attributes' do
        candidates_attributes = {
          candidates_attributes: [build(:candidate).attributes]
        }
        post :create, params: {
          job_role: attributes_for(:job_role, meeting_id: meeting.id)
          .merge(candidates_attributes)
        }
        expect(JobRole.last.candidates.count).to eq 1
      end
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
