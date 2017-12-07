class Meeting < ApplicationRecord
  belongs_to :admin

  validates :name, :admin_id, presence: true
end
