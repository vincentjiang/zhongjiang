class Cms::CategoriesController < ApplicationController
  before_action :set_cms_category, only: [:show, :edit, :update, :destroy]

  # GET /cms/categories
  # GET /cms/categories.json
  def index
    @cms_categories = Cms::Category.all
  end

  # GET /cms/categories/1
  # GET /cms/categories/1.json
  def show
  end

  # GET /cms/categories/new
  def new
    @cms_category = Cms::Category.new
  end

  # GET /cms/categories/1/edit
  def edit
  end

  # POST /cms/categories
  # POST /cms/categories.json
  def create
    @cms_category = Cms::Category.new(cms_category_params)

    respond_to do |format|
      if @cms_category.save
        format.html { redirect_to @cms_category, notice: 'Category was successfully created.' }
        format.json { render :show, status: :created, location: @cms_category }
      else
        format.html { render :new }
        format.json { render json: @cms_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cms/categories/1
  # PATCH/PUT /cms/categories/1.json
  def update
    respond_to do |format|
      if @cms_category.update(cms_category_params)
        format.html { redirect_to @cms_category, notice: 'Category was successfully updated.' }
        format.json { render :show, status: :ok, location: @cms_category }
      else
        format.html { render :edit }
        format.json { render json: @cms_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cms/categories/1
  # DELETE /cms/categories/1.json
  def destroy
    @cms_category.destroy
    respond_to do |format|
      format.html { redirect_to cms_categories_url, notice: 'Category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cms_category
      @cms_category = Cms::Category.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cms_category_params
      params[:cms_category]
    end
end
