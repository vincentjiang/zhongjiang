class Cms::CategoriesController < CmsController
  before_action :set_category, only: [:edit, :update, :destroy]

  def index
    @categories = Category.all.page(params[:page]).per(25)
  end

  def new
    @category = Category.new
  end

  def edit
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to cms_categories_url, notice: '新建分类成功'
    else
      flash.now[:error] = @category.errors.full_messages.join(" ")
      render :new
    end
  end

  def update
    if @category.update(category_params)
      redirect_to cms_categories_url, notice: '修改分类成功'
    else
      flash.now[:error] = @category.errors.full_messages.join(" ")
      render :edit
    end
  end

  def destroy
    if @category.categories.empty?
      @category.destroy
      redirect_to cms_categories_url, notice: '删除分类成功'
    else
      redirect_to cms_categories_url, notice: "此分类拥有子分类，不能被删除"
    end
  end

  private
    def set_category
      @category = Category.find(params[:id])
    end

    def category_params
      params.require(:category).permit(:name, :category_id)
    end
end
