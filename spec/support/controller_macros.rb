module ControllerMacros
  def login_admin
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:admin]
      sign_in create(:admin, email: Faker::Internet.email)
    end
  end

  def login_user
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      sign_in create(:user, email: Faker::Internet.email)
    end
  end
end
