class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.belongs_to :product, index: true, null: false

      t.timestamps null: false
    end
    add_foreign_key :images, :products
  end
end
