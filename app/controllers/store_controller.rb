class StoreController < ApplicationController
   skip_before_filter :authorize
   include CurrentCart
   before_action :set_cart, only: [:new, :create]

   def index
      @products = Product.order(:title).paginate(page: params[:page], per_page: 2)
          @id = params[:id]
	Product.increment_counter(:hits, @id)
   end

   def posts_category
      @condition = params[:Find]

      if @condition != nil
 	if @condition == "구매횟수"
		@products = Product.order(:BuyCount).reverse
		@title = "구매횟수 조회결과"
	elsif @condition == "추천횟수"
		@products = Product.order(:hits).reverse
		@title = "추천횟수 조회결과"
	elsif @condition == "최신등록순"
		@products = Product.order(:updated_at).reverse
		@title = "최신등록순 조회결과"
	else
      		@products = Product.order(:price).reverse
		@title = "가격순 조회결과"
	end
      else
	      case params[:category]
	      when "TOP"
		 @products = Top.all
		 @type = "Top"
	      when "PANT"
		 @products = Pant.all
		 @type = "Pant"
	      when "ACC"
		 @products = Accessory.all
		 @type = "Acc"      
		 
	      end
	end
   end

   def show
      @id = params[:id]
      
      @a = Product.find_by_product_id(@id)
	Product.increment_counter(:hits, @a)
      @type = @a.close_type2
      
      if @type=="Top"
         @products = Top.find_by_product_id(@id)
      elsif @type=="Pant"
         @products = Pant.find_by_product_id(@id)
      else
         @products = Accessory.find_by_product_id(@id)	
      end
   end

   def find
	
	@pro = "Top"
	@products = Top.all
	
  end

end
