class Image < ActiveRecord::Base
  belongs_to :product
  mount_uploader :image_url, ImageUrlUploader
end
