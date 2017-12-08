class JobRole < ApplicationRecord
  belongs_to :meeting
  has_many :candidates, dependent: :destroy
  accepts_nested_attributes_for :candidates,
    reject_if: proc { |attributes|
      attributes[:name].blank?
    }

  validates :name, :meeting_id, presence: true
  validates :name, length: { maximum: 30 }
end
