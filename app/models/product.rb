class Product < ApplicationRecord
  has_one_attached :photo

  validates :name, :description, :type, :price, presence: true
end
