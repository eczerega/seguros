class StoresUsersController < ApplicationController
  before_action :set_stores_user, only: [:show, :edit, :update, :destroy]

  # GET /stores_users
  # GET /stores_users.json
  def index
    @stores_users = StoresUser.all
  end

  # GET /stores_users/1
  # GET /stores_users/1.json
  def show
  end

  # GET /stores_users/new
  def new
    @stores_user = StoresUser.new
  end

  # GET /stores_users/1/edit
  def edit
  end

  # POST /stores_users
  # POST /stores_users.json
  def create
    @stores_user = StoresUser.new(stores_user_params)

    respond_to do |format|
      if @stores_user.save
        format.html { redirect_to @stores_user, notice: 'Stores user was successfully created.' }
        format.json { render :show, status: :created, location: @stores_user }
      else
        format.html { render :new }
        format.json { render json: @stores_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stores_users/1
  # PATCH/PUT /stores_users/1.json
  def update
    respond_to do |format|
      if @stores_user.update(stores_user_params)
        format.html { redirect_to @stores_user, notice: 'Stores user was successfully updated.' }
        format.json { render :show, status: :ok, location: @stores_user }
      else
        format.html { render :edit }
        format.json { render json: @stores_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stores_users/1
  # DELETE /stores_users/1.json
  def destroy
    @stores_user.destroy
    respond_to do |format|
      format.html { redirect_to stores_users_url, notice: 'Stores user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stores_user
      @stores_user = StoresUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stores_user_params
      params.require(:stores_user).permit(:user_id, :store_id)
    end
end
