class AddDiscountToCategories < ActiveRecord::Migration[5.0]
  def change
    add_column :categories, :discount, :integer
  end
end
