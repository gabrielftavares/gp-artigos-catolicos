class Product < ApplicationRecord
  validates :name, :description, :type, :price, presence: true
end
