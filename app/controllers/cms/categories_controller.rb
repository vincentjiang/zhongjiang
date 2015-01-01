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
      flash.now[:error] = @category.errors.full_messages.to_sentence
      render :new
    end
  end

  def update
    begin
      @category.update(category_params)
    rescue Exception => e
      flash[:error] = e.message
      render :edit
    else
      if @category.errors.any?
        flash[:error] = @category.errors.full_messages.to_sentence
        render :edit
      else
        redirect_to cms_categories_url, notice: "修改分类成功"
      end
    end
  end

  def destroy
    begin
      @category.destroy
      flash[:notice] = "删除分类成功"
    rescue Exception => e
      flash[:error] = e.message
    end
    redirect_to cms_categories_url
  end

  private
    def set_category
      @category = Category.find(params[:id])
    end

    def category_params
      params.require(:category).permit(:name, :category_id)
    end
end
