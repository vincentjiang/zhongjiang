class CreateCategories < ActiveRecord::Migration
  def change
    create_table :zj_categories do |t|
      t.string :name, null: false
      t.belongs_to :category, index: true

      t.timestamps null: false
    end
  end
end
