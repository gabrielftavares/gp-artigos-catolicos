class ProductsController < ApplicationController
  before_action :set_params, only: %i[show edit update destroy]
  before_action :authenticate_user!, except: %i[index show]

  def index
    @products = Product.all
    @categories = Category.all
  end

  def show
    @randoms = Product.order(Arel.sql('RANDOM()')).first(4)
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to @product
    else
      render 'new'
    end
  end

  def edit; end

  def update
    if @product.update(product_params)
      redirect_to @product
    else
      render 'edit'
    end
  end

  def destroy
    redirect_to '/' if @product.destroy
  end

  private

  def set_params
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :description, :category_id, :price, :photo)
  end
end
