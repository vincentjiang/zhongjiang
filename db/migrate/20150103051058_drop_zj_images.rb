class DropZjImages < ActiveRecord::Migration
  def change
    drop_table :zj_images
  end
end
