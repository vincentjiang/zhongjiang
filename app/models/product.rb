class Product < ActiveRecord::Base
  self.table_name = "zj_products"

  belongs_to :category
  has_many :images, dependent: :destroy

  validates :name, :category_id, presence: true

  accepts_nested_attributes_for :images, allow_destroy: true, reject_if: proc { |attributes| attributes[:image_path].blank? }

  def self.search(keyword)
    if keyword
      where("name like ?", "%#{keyword}%")
    else
      all
    end
  end

end
