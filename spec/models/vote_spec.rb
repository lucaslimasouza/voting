require 'rails_helper'

RSpec.describe Vote, type: :model do
  describe 'validation' do
    %i( user_id candidate_id job_role_id ).each do |field|
      it { is_expected.to validate_presence_of field }
    end

    it {
      create(:vote)
      is_expected.to validate_uniqueness_of(:candidate_id)
        .scoped_to([:job_role_id, :user_id])
    }
  end
end
