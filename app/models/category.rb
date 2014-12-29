class Category < ActiveRecord::Base
  has_many :categories, foreign_key: "category_id"
  belongs_to :category
end
