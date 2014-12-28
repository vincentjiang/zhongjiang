class Category < ActiveRecord::Base
  has_many :categories, foreign_key: "category_id"
  belongs_to :category
  validates :name, presence: true
  validates :name, uniqueness: true
end
