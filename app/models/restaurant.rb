class Restaurant < ApplicationRecord
  has_many :review
  validates :name, :address, :category, presence: true
end
