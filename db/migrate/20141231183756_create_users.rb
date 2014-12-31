class CreateUsers < ActiveRecord::Migration
  def change
    create_table :zj_users do |t|
      t.string :name, null: false
      t.string :email
      t.string :password_digest, null: false
      t.boolean :admin, default: false

      t.timestamps null: false
    end
  end
end
