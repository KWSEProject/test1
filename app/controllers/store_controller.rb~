class StoreController < ApplicationController
	skip_before_action :authorize
	include CurrentCart
	before_action :set_cart, only: [:new, :create]

	def index
		@products = Product.order(:title)
	end

	def posts_category
		case params[:category]
		when "TOP"
			@category = "1st cloth"
		when "PANT"
			@category = "Pant"
		when "ACC"
			@category = "Acc"
		when "SHOES"
			@category = "Shoes"
		end
		@products = Product.where(title: @category)
	end

	def show
		@products = Top.find(params[:id])
	end

end
