class ProductsController < ApplicationController
  def index
    @search = Product.search(params[:q])
    @products = @search.result
    # add extra dropdown that will contain all conditions aka model columns/schema
    @search.build_condition
  end
end
