require 'rails_helper'

RSpec.describe Meeting, type: :model do
  describe 'validation' do
    %i( name admin_id ).each do |field|
      it { is_expected.to validate_presence_of field }
    end
  end
end
