class RemoveImageFromZjProducts < ActiveRecord::Migration
  def change
    remove_column :zj_products, :image
  end
end
