class Product < ApplicationRecord
  belongs_to :category

  validates_presence_of :price
  # validates_presence_of :category #for rails4
end
