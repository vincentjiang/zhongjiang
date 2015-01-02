module Cms::CategoriesHelper
  def select_tip
    if @category.options.count.zero?
      "暂无任何分类"
    elsif @category.options.count > 0
      "请选择上级分类"
    end
  end
  
end
