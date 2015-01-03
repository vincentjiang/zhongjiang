class Cms::ProductsController < CmsController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    if params[:keyword]
      @products = Product.search(params[:keyword]).page(params[:page]).per(25)
    else
      @products = Product.page(params[:page]).per(25)
    end
  end

  def show
  end

  def new
    @product = Product.new
  end

  def edit
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to cms_products_url, notice: '创建产品成功'
    else
      render :new
    end
  end

  def update
    if @product.update(product_params)
      redirect_to  cms_products_url, notice: '修改产品成功'
    else
      render :edit
    end
  end

  def destroy
    @product.destroy
    redirect_to cms_products_url, notice: '删除产品成功'
  end

  private
    def set_product
      @product = Product.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:name, :author, :desc, :long_desc, :category_id)
    end
end
