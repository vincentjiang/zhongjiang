class Image < ActiveRecord::Base
  self.table_name = "zj_images"
  mount_uploader :image_path, ImagePathUploader
  belongs_to :product
end
