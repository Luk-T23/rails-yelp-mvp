class Review < ApplicationRecord
  has_one :restaurant

  validates :content, presence: true
  validates :rating, presence: true
end
