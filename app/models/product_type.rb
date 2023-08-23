class ProductType < ApplicationRecord
  validates :product_type_name, presence: true
  has_many :products
end
