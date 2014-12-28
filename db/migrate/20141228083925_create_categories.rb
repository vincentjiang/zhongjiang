class CreateCategories < ActiveRecord::Migration
  def change
    create_table :zj_categories do |t|
      t.string :name
      t.belongs_to :category, index: true

      t.timestamps null: false
    end
    add_foreign_key :zj_categories, :zj_categories, column: "category_id"
  end
end
