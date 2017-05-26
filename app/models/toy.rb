class Toy < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, :description, :price_cents, presence: true
  has_attachment :image


  def price_usd
    (price_cents / 100.00).to_i
  end

end
