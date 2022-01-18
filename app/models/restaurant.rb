CATEGORY_LIST = ["Chinese", "Italian", "Japanese", "French", "Belgian"]

class Restaurant < ApplicationRecord
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: CATEGORY_LIST,
    message: "It is not a valid category" }
  has_many :reviews, :dependent => :destroy
end
