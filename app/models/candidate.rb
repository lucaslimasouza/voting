class Candidate < ApplicationRecord
  belongs_to :job_role

  validates :name, :job_role_id, presence: true
end
