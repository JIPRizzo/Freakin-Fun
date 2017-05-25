class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :toy
  validates :name, :address, :start_date, :end_date,  presence: true
  geocoded_by :address
  after_validation :geocode, if: :address_changed?


end
