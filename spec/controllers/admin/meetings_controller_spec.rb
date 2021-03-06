require 'rails_helper'

RSpec.describe Admin::MeetingsController, type: :controller do
  login_admin

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

    it "returns meetings from current_admin" do
      subject.current_admin.meetings = build_list(:meeting, 2)
      subject.current_admin.save
      get :index
      expect(assigns(:meetings).count).to eq 2
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end

    it "return new instance of Meeting" do
      get :new
      expect(assigns(:meeting)).to be_new_record
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Meeting" do
        expect {
          post :create, params: { meeting: attributes_for(:meeting) }
        }.to change(Meeting, :count).by(1)
      end

      it "redirect to meeting #index" do
        post :create, params: { meeting: attributes_for(:meeting) }
        expect(response).to redirect_to(admin_meetings_url)
      end
    end
  end

end
