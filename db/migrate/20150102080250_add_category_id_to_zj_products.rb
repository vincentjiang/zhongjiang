class AddCategoryIdToZjProducts < ActiveRecord::Migration
  def change
    add_column :zj_products, :category_id, :integer, null: false
  end
end
