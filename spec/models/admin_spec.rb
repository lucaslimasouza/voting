require 'rails_helper'

RSpec.describe Admin, type: :model do
  describe 'relations' do
    it { is_expected.to have_many :meetings }
  end
end
