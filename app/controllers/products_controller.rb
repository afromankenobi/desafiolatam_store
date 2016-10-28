class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def search
    @products = Product
                .where(name: params[:name])
                .or(Product.where(price: params[:price]))
  end
end
