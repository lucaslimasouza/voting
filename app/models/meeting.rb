class Meeting < ApplicationRecord
  belongs_to :admin
  has_many :job_roles, dependent: :destroy

  validates :name, :admin_id, presence: true
  validates :name, length: { maximum: 30 }
end
