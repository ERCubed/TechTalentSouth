class InventoryController < ApplicationController
  def all_products
  	@products = Product.all
  end

  def one_product
  end

  def by_category
  	@categories = Product.select(:category).distinct
  end

  def category
  	@category_name = params[:name]
    @products = Product.where(category: @category_name)
  end

end
