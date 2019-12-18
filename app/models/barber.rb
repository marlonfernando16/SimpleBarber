class Barber < ApplicationRecord
    has_many :attendances
    has_many :customers, through: :attendances
end
