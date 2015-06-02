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
		when "PANT"
			@products = Pant.all
		when "ACC"
			@products = ACC.all
		when "SHOES"
			@products = SHOES.all
		end
		
	end

	def show
		@products = Top.find(params[:id])
	end

end
