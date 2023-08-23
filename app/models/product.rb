class Product < ApplicationRecord
  validates :product_name, :product_description, presence: true
  belongs_to :product_type
  has_many :comments
end
