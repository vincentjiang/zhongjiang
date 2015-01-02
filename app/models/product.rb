class Product < ActiveRecord::Base
  self.table_name = "zj_products"

  belongs_to :category
  has_many :images, dependent: :destroy

  validates :name, presence: true
end
