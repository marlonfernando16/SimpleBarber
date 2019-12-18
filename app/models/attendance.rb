class Attendance < ApplicationRecord
  belongs_to :customer
  belongs_to :barber
  has_many :service_attendances
  has_many :services, through: :service_attendances

  accepts_nested_attributes_for :services, reject_if: :all_blank, allow_destroy: true

end
