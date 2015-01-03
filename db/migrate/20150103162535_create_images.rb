class CreateImages < ActiveRecord::Migration
  def change
    create_table :zj_images do |t|
      t.string :image_path, null: false
      t.belongs_to :product, index: true

      t.timestamps null: false
    end
    add_foreign_key :zj_images, :zj_products, column: :product_id
  end
end
