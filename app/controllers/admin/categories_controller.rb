class Admin::CategoriesController < AdminController
  before_action :set_category, only: %i(show edit update destroy)

  def index
    @categories = Category.all
    drop_breadcrumb "Categories"
  end

  def show
    @faqs = @category.faqs
    drop_breadcrumb "Categories", admin_categories_path
    drop_breadcrumb @category.title
  end

  def new
    @category = Category.new
  end

  def edit
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to admin_categories_path
    else
      render :new
    end
  end

  def update
    if @category.update(category_params)
      redirect_to admin_categories_path
    else
      render :edit
    end
  end

  def destroy
    @category.destroy
    redirect_to admin_categories_url
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_category
    @category = Category.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def category_params
    params.require(:category).permit(:title)
  end
end
