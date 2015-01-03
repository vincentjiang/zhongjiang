class Product < ActiveRecord::Base
  self.table_name = "zj_products"
  mount_uploader :image, ImageUploader

  belongs_to :category
  has_many :images, dependent: :destroy

  validates :name, :category_id, presence: true

  def self.search(keyword)
    if keyword
      where("name like ?", "%#{keyword}%")
    else
      all
    end
  end

end
