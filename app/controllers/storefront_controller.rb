class StorefrontController < ApplicationController
  def all_items
  	@products = Product.all
  end

  def items_by_category
  	#to get to this page: catergorical_path(params[:category_id])
  @category = Category.find(params[:category_id])
  @products = @category.products
  end

  def items_by_brand
    @brand = params[:brand]
    @products = Product.where(brand: @brand)
  end
end
