class Cms::ProductsController < ApplicationController
  before_action :set_cms_product, only: [:show, :edit, :update, :destroy]

  # GET /cms/products
  # GET /cms/products.json
  def index
    @cms_products = Cms::Product.all
  end

  # GET /cms/products/1
  # GET /cms/products/1.json
  def show
  end

  # GET /cms/products/new
  def new
    @cms_product = Cms::Product.new
  end

  # GET /cms/products/1/edit
  def edit
  end

  # POST /cms/products
  # POST /cms/products.json
  def create
    @cms_product = Cms::Product.new(cms_product_params)

    respond_to do |format|
      if @cms_product.save
        format.html { redirect_to @cms_product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @cms_product }
      else
        format.html { render :new }
        format.json { render json: @cms_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cms/products/1
  # PATCH/PUT /cms/products/1.json
  def update
    respond_to do |format|
      if @cms_product.update(cms_product_params)
        format.html { redirect_to @cms_product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @cms_product }
      else
        format.html { render :edit }
        format.json { render json: @cms_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cms/products/1
  # DELETE /cms/products/1.json
  def destroy
    @cms_product.destroy
    respond_to do |format|
      format.html { redirect_to cms_products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cms_product
      @cms_product = Cms::Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cms_product_params
      params.require(:cms_product).permit(:title, :author, :desc, :long_desc)
    end
end
