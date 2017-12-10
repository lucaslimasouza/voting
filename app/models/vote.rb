class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :candidate
  belongs_to :job_role

  validates :user_id, :candidate_id, :job_role_id, presence: true
  validates_uniqueness_of :job_role_id, scope: [:candidate_id, :user_id]
end
