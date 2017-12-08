class Candidate < ApplicationRecord
  belongs_to :job_role
  has_many :votes, dependent: :destroy

  validates :name, presence: true
  validates :name, length: { maximum: 30 }
end
