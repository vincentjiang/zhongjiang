class Product < ActiveRecord::Base
  self.table_name = "zj_products"

  has_many :images, dependent: :destroy

  validates :title, presence: true
end
