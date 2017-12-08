class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :candidate

  validates :user_id, :candidate_id, presence: true
  validates_uniqueness_of :candidate_id, scope: :user_id
end
