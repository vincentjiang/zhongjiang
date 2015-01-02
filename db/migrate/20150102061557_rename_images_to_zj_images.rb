class RenameImagesToZjImages < ActiveRecord::Migration
  def change
    rename_table :images, :zj_images
  end
end
