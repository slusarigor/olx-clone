class ProductsController < ApplicationController
  before_action :authenticate_user!, only: :new

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end
end
