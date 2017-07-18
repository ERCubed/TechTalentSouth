class InventoryController < ApplicationController
  def all_products
  	@products = Product.all
  end

  def one_product
  end

  def by_category
  	# @products = Product.where(category: 'chair')
  	@categories = Product.select(:category).distinct
  end

  def category
  	@products = Product.where(category: params[:name])
  end

end
