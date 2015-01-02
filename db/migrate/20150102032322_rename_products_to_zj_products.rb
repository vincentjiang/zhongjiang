class RenameProductsToZjProducts < ActiveRecord::Migration
  def change
    rename_table :products, :zj_products
  end
end
