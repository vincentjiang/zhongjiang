class RenameTitleToNameFormZjProducts < ActiveRecord::Migration
  def change
    rename_column :zj_products, :title, :name
  end
end
