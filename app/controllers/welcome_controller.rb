class WelcomeController < ApplicationController
  def index
  	# @categories = Category.all
  	session[:name] = []
  end


  def product_display_homepage

  	@products = Product.where("sub_category_id=?", params[:id]) if params[:id].present?
  	logger.debug "........#{params.inspect}"
  	respond_to do |format|
  		format.js
  	end
  end

end
