class Restaurant < ApplicationRecord
  has_many :review
  validates :name, :address, :catagory, presence: true
end
