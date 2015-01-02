module Cms::CategoriesHelper
  def select_options_tip
    if @category.options.empty?
      "暂无任何分类"
    else
      "请选择上级分类"
    end
  end
 
end
