module Cms::CategoriesHelper
  def prompt
    "请选择上级分类" if Category.count.zero? || (@category.new_record? && @category.options.count > 0)
  end
end
