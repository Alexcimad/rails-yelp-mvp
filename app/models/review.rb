class Review < ApplicationRecord
  validates :rating, :content, presence: true
  validates :rating, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 5, only_integer: true}
  belongs_to :restaurant
end
