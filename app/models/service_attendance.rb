class ServiceAttendance < ApplicationRecord
  belongs_to :attendance
  belongs_to :service
end
