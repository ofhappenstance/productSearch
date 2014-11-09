class ProductsController < ApplicationController
  def index
    # make search object
    # :q is the default param key for search params
    @search = Product.search(params[:q])
    # get found item by calling result on search object
    #f passed (distinct: true), result will generate a SELECT DISTINCT to avoid returning duplicate rows
    @products = @search.result
    @search.build_condition
  end
end
