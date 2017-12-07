require 'rails_helper'

RSpec.describe Meeting, type: :model do
  describe 'validation' do
    %i( name admin_id ).each do |field|
      it { is_expected.to validate_presence_of field }
    end
  end

  describe 'relations' do
    it { is_expected.to belong_to :admin }
  end
end
