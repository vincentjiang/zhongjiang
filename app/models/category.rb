class Category < ActiveRecord::Base
  self.table_name =  "zj_categories"

  has_many :categories, foreign_key: "category_id"
  belongs_to :category

  validates :name, presence: true
  validates :name, uniqueness: true
  
  def options
    Category.all.select{ |c| c != self }.map { |c| [c.name, c.id] }
  end

end
