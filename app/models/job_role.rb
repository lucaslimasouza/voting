class JobRole < ApplicationRecord
  belongs_to :meeting
  has_many :candidates, dependent: :destroy

  validates :name, :meeting_id, presence: true
end
