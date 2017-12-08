require 'rails_helper'

RSpec.describe JobRole, type: :model do
  describe 'validation' do
    %i( name meeting_id ).each do |field|
      it { is_expected.to validate_presence_of field }
    end

    it { is_expected.to validate_length_of(:name).is_at_most(30)}
  end

  describe 'relations' do
    it { is_expected.to have_many :candidates }
  end
end
