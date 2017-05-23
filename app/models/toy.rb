class Toy < ApplicationRecord
  belongs_to :user
  validates :name, :description, :price_cents, presence: true
end
