class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  

  # GET /products
  # GET /products.json
  def index
    @products = Product.search(params[:search], params[:page])
    
    if session[:user_id]
	@users = User.find(params[:user_id])
    else
	@users = 0
    end
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)
    @product.title = params[:title]
    @product.description = params[:description]
    @product.image_url = params[:image_url]
    @product.image_url2 = params[:image_url2]
    @product.price = params[:price]
    @product.BuyCount = 0
    @product_id = Product.maximum(:product_id)
    @product.product_id = @product_id+1

    if @product.close_type2 == "Top"
	@top = Top.new
	@top.main_title = params[:title]
	@top.description = params[:description]
	@top.main_image_url = params[:image_url]
	@top.image_url1 = params[:image_url2]
	@top.price = params[:price]
	@top.buy_count = 0
	@top.product_id = @product.product_id
	@top.color1 = params[:color1]
	@top.size1 = params[:size1]
	@top.size2 = params[:size2]
	@top.size3 = params[:size3]
	@top.stock1 = params[:stock1]
	@top.stock2 = params[:stock2]
	@top.stock3 = params[:stock3]
	@top.color2 = params[:color2]
	@top.size4 = params[:size4]
	@top.size5 = params[:size5]
	@top.size6 = params[:size6]
	@top.stock4 = params[:stock4]
	@top.stock5 = params[:stock5]
	@top.stock6 = params[:stock6]
	@top.save
    elsif @product.close_type2 == "Pant"
	@pant = Pant.new
	@pant.main_title = params[:title]
	@pant.description = params[:description]
	@pant.main_image_url = params[:image_url]
	@pant.image_url1 = params[:image_url2]
	@pant.price = params[:price]
	@pant.buy_count = 0
	@pant.product_id = @product.product_id
	@pant.color1 = params[:color1]
	@pant.size1 = params[:size1]
	@pant.size2 = params[:size2]
	@pant.size3 = params[:size3]
	@pant.stock1 = params[:stock1]
	@pant.stock2 = params[:stock2]
	@pant.stock3 = params[:stock3]
	@pant.color2 = params[:color2]
	@pant.size4 = params[:size4]
	@pant.size5 = params[:size5]
	@pant.size6 = params[:size6]
	@pant.stock4 = params[:stock4]
	@pant.stock5 = params[:stock5]
	@pant.stock6 = params[:stock6]
	@pant.save
    end

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def who_bought
     @product = Product.find(params[:id])
   @latest_order = @product.orders.order(:updated_at).last
   if stale?(@latest_order)
      respond_to do |format|
         format.atom
      end
   end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:title, :description, :image_url, :price, :BuyCount, :image_url2, :close_type2)
    end
end
