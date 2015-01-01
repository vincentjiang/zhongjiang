class Product < ActiveRecord::Base
  has_many :images, dependent: :destroy

  validates :title, presence: true
end
