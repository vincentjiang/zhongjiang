class Cms::CategoriesController < CmsController
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  def index
    @categories = Category.all
  end

  def show
  end

  def new
    @category = Category.new
  end

  def edit
  end

  def create
    @category = Category.new(category_params)

    respond_to do |format|
      if @category.save
        format.html { redirect_to [:cms, @category], notice: '新建分类成功' }
        format.json { render :show, status: :created, location: [:cms, @category] }
      else
        format.html { render :new }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @category.update(category_params)
        format.html { redirect_to [:cms, @category], notice: '修改分类成功' }
        format.json { render :show, status: :ok, location: [:cms, @category] }
      else
        format.html { render :edit }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    respond_to do |format|
      if @category.categories.empty?
        @category.destroy
        format.html { redirect_to cms_categories_url, notice: '删除分类成功' }
        format.json { head :no_content }
      else
        format.html { redirect_to cms_categories_url, notice: "此分类拥有子分类，不能被删除"}
      end
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
