class Category < ApplicationRecord
  has_many :products, dependent: :destroy

  validates :discount, inclusion: { in: 0..100 }
end
