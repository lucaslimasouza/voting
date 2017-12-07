class JobRole < ApplicationRecord
  belongs_to :meeting

  validates :name, :meeting_id, presence: true
end
