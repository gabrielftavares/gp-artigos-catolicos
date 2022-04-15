class Product < ApplicationRecord
  has_one_attached :photo
  belongs_to :category

  validates :name, :description, :category, :price, :photo, presence: true
end
