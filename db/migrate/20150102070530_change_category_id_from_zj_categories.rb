class ChangeCategoryIdFromZjCategories < ActiveRecord::Migration
  def change
    change_column :zj_categories, :category_id, :integer, default: 0
  end
end
