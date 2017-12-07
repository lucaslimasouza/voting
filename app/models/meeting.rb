class Meeting < ApplicationRecord
  belongs_to :admin
  has_many :job_roles, dependent: :destroy

  validates :name, :admin_id, presence: true
end
