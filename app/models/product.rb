class Product < ApplicationRecord
  belongs_to :category

  scope :premium, -> { where(premium: true) }
  scope :last_n, -> (n) { limit(n) }

  validates_presence_of :price
  validates :discount, in: 0..100
  # validates_presence_of :category #for rails4

  after_destroy :remove_category_if_empty

  def precio_final
    price - (price * (discount / 100))
  end

  private
  def remove_category_if_empty
    if self.category.products.count.zero?
      self.category.destroy
    end
  end
end
