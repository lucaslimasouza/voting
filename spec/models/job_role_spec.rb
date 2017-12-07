require 'rails_helper'

RSpec.describe JobRole, type: :model do
  describe 'validation' do
    %i( name meeting_id ).each do |field|
      it { is_expected.to validate_presence_of field }
    end
  end
end
