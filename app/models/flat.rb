class Flat < ApplicationRecord
  validates :name, :address, :price_per_night, presence: true
  validates :number_of_guests, length: { minimum: 1 }
  validates :description, length: {
    maximum: 200,
    too_long: '200 characters is the maximum allowed'
  }
end
