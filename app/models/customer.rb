class Customer < ApplicationRecord
    has_many :attendances
    has_many :barbers, through: :attendances
end
