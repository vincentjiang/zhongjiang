class Image < ActiveRecord::Base
  self.table_name = "zj_images"
  belongs_to :product
  mount_uploader :image_url, ImageUrlUploader
end
