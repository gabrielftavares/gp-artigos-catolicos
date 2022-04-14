class Product < ApplicationRecord
  has_one_attached :photo

  validates :name, :description, :product_type, :price, presence: true
  validates :product_type, inclusion: { in: %w[Terço Pulseira Chaveiro Agenda] }
end
