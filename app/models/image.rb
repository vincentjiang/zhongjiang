class Image < ActiveRecord::Base
  mount_uploader :image_path, ImagePathUploader
  belongs_to :product
end
