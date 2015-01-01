class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title, null: false
      t.text :desc
      t.string :author

      t.timestamps null: false
    end
  end
end
