require 'rails_helper'

RSpec.describe Candidate, type: :model do
  describe 'validation' do
    %i( name ).each do |field|
      it { is_expected.to validate_presence_of field }
    end

    it { is_expected.to validate_length_of(:name).is_at_most(30)}
  end

  describe 'relations' do
    it { is_expected.to belong_to :job_role }
    it { is_expected.to have_many :votes }
  end
end
