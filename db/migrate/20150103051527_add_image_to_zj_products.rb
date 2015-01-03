class AddImageToZjProducts < ActiveRecord::Migration
  def change
    add_column :zj_products, :image, :string
  end
end
