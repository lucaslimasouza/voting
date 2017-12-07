require 'rails_helper'

RSpec.describe Candidate, type: :model do
  describe 'validation' do
    %i( name job_role_id).each do |field|
      it { is_expected.to validate_presence_of field }
    end
  end
end
