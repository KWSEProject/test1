class StoreController < ApplicationController
	skip_before_filter :authorize
	include CurrentCart
	before_action :set_cart, only: [:new, :create]

	def index
		@products = Product.order(:title).paginate(page: params[:page], per_page: 1)
	end

	def posts_category
		case params[:category]
		when "TOP"
			@products = Top.all
			@type = "Top"
		when "PANT"
			@products = Pant.all
			@type = "Pant"
		when "ACC"
			@products = Acc.all
			@type = "Acc"
		when "SHOES"
			@products = Shoes.all
			@type = "Shoes"
		end
		
	end

	def show
		# @products = Top.find(params[:id])

      		#@a = Product.where(product_id=> params[:id])
		#product_type = @a.close_type2
		#if product_type == "Top"
		#	@products = "55555"
		#elsif product_type == "Pant"
		#	@products = "11111"
		#end
		@products = Top.find(params[:id])



   	end

end
