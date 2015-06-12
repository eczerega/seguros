class ShopPointsController < ApplicationController
  before_action :set_shop_point, only: [:show, :edit, :update, :destroy]

  # GET /shop_points
  # GET /shop_points.json
  def index
    @shop_points = ShopPoint.all
  end

  # GET /shop_points/1
  # GET /shop_points/1.json
  def show
  end

  # GET /shop_points/new
  def new
    @shop_point = ShopPoint.new
  end

  # GET /shop_points/1/edit
  def edit
  end

  # POST /shop_points
  # POST /shop_points.json
  def create
    @shop_point = ShopPoint.new(shop_point_params)

    respond_to do |format|
      if @shop_point.save
        format.html { redirect_to @shop_point, notice: 'Shop point was successfully created.' }
        format.json { render :show, status: :created, location: @shop_point }
      else
        format.html { render :new }
        format.json { render json: @shop_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shop_points/1
  # PATCH/PUT /shop_points/1.json
  def update
    respond_to do |format|
      if @shop_point.update(shop_point_params)
        format.html { redirect_to @shop_point, notice: 'Shop point was successfully updated.' }
        format.json { render :show, status: :ok, location: @shop_point }
      else
        format.html { render :edit }
        format.json { render json: @shop_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shop_points/1
  # DELETE /shop_points/1.json
  def destroy
    @shop_point.destroy
    respond_to do |format|
      format.html { redirect_to shop_points_url, notice: 'Shop point was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shop_point
      @shop_point = ShopPoint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shop_point_params
      params.require(:shop_point).permit(:name, :city, :comuna, :rut, :street, :image)
    end
end
