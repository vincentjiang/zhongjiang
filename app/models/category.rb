class Category < ActiveRecord::Base
  self.table_name =  "zj_categories"

  has_many :categories, foreign_key: "category_id"
  belongs_to :category
  has_many :products

  validates :name, presence: true
  validates :name, uniqueness: true

  after_destroy :can_not_destroy_parent
  before_update :can_not_belongs_to_children

  def parent_name
    category ? category.name : "顶层分类"
  end
  
  def options
    Category.all.select{ |c| c != self && !self.categories.include?(c) }.map { |c| [c.name, c.id] }
  end

  private
    def can_not_destroy_parent
      raise "不能删除拥有子类的分类" if categories.count > 0
    end
    
    def can_not_belongs_to_children
      raise "不能选择子分类作为自己的分类" if categories.include?(category)
    end
end
