class StoreController < ApplicationController
	include CurrentCart
	before_action :set_cart, only: [:new, :create]

	def index
		@products = Product.order(:title)
	end
end
