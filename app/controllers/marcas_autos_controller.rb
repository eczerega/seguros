class MarcasAutosController < ApplicationController
  before_action :set_marcas_auto, only: [:show, :edit, :update, :destroy]

  # GET /marcas_autos
  # GET /marcas_autos.json
  def index
    @marcas_autos = MarcasAuto.all
  end

  # GET /marcas_autos/1
  # GET /marcas_autos/1.json
  def show
  end

  # GET /marcas_autos/new
  def new
    @marcas_auto = MarcasAuto.new
  end

  # GET /marcas_autos/1/edit
  def edit
  end

  # POST /marcas_autos
  # POST /marcas_autos.json
  def create
    @marcas_auto = MarcasAuto.new(marcas_auto_params)

    respond_to do |format|
      if @marcas_auto.save
        format.html { redirect_to @marcas_auto, notice: 'Marcas auto was successfully created.' }
        format.json { render :show, status: :created, location: @marcas_auto }
      else
        format.html { render :new }
        format.json { render json: @marcas_auto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /marcas_autos/1
  # PATCH/PUT /marcas_autos/1.json
  def update
    respond_to do |format|
      if @marcas_auto.update(marcas_auto_params)
        format.html { redirect_to @marcas_auto, notice: 'Marcas auto was successfully updated.' }
        format.json { render :show, status: :ok, location: @marcas_auto }
      else
        format.html { render :edit }
        format.json { render json: @marcas_auto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /marcas_autos/1
  # DELETE /marcas_autos/1.json
  def destroy
    @marcas_auto.destroy
    respond_to do |format|
      format.html { redirect_to marcas_autos_url, notice: 'Marcas auto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_marcas_auto
      @marcas_auto = MarcasAuto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def marcas_auto_params
      params.require(:marcas_auto).permit(:marca)
    end
end
