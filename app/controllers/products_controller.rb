class ProductsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_product
    @product = Product.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  # def product_params
  #   #params.require(:product).permit(:title, :description, :price, :image)
  #   result = params.require(:product).permit(:title, :description, :price, :image)
  #   result[:price] = result[:price].to_f * 100.0
  #   result
  # end

end
