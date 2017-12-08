class Candidate < ApplicationRecord
  belongs_to :job_role
  has_many :votes, dependent: :destroy

  validates :name, :job_role_id, presence: true
  validates :name, length: { maximum: 30 }  
end
