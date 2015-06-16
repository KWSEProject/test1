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
		@id = params[:id]

		@a = Product.find_by_product_id(@id)
		@type = @a.close_type2
		
		if @type=="Top"
			@products = Top.find_by_product_id(@id)
		elsif @type=="Pant"
			@products = Pant.find_by_product_id(@id)
		end
   	end

end
