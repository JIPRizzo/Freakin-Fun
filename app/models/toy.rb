class Toy < ApplicationRecord
  belongs_to :user
  validates :name, :description, :price_cents, presence: true
  has_attachment :image

  def price_usd
    price_cents / 100
  end

end
