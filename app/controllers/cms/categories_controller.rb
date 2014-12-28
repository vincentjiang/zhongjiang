class Cms::CategoriesController < CmsController
  set_tab :categories, :cms_sidebar
  before_action :set_category, only: [:edit, :udpate, :destroy]
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to cms_categories_path, notice: "创建分类成功"
    else
      flash.now[:error] = "创建分类失败"
      render :new
    end
  end

  def edit
  end

  def update
    if @category.update(category_params)
      redirect_to cms_categories_path, notice: '修改分类成功'
    else
      flash.now[:error] = "修改分类失败"
      render :edit
    end
  end

  def destroy
    @category.destroy
    redirect_to cms_categories_path, notice: "删除分类成功"
  end

  private
    def set_category
      @category = Category.find(params[:id])
    end
    def category_params
      params.require(:category).permit(:name, :category_id)
    end
end
