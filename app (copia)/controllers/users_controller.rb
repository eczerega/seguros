class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show



   # @users = current_user
   # respond_to do |format|
   #   format.html
   #   format.pdf do
   #     render pdf: "file_name"   # Excluding ".pdf" extension.
   #   end
   # end

    @users = current_user
  end

  # GET /users/new
  def new
    @user = User.new
  end

  def download


    send_file 'pdfs/'+params[:userid]+'.pdf', :type=>"application/pdfs", :x_sendfile=>true

  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save


        @pdf=WickedPdf.new.pdf_from_string('<meta charset="utf-8" />
                                                <h1>Bienvenido a SeguroFácil '+@user.name.to_s+' </h1>'+
                                               ' <h3>Aca puede ir cualquier wea como pdf</h3>')

        save_path = Rails.root.join('pdfs',@user.id.to_s+'.pdf')
        File.open(save_path, 'wb') do |file|
          file << @pdf
        end
        ActionMail.bienvenido_email(@user, 'Bienvenido '+@user.name+' a seguro fácil', "Creaste la cuenta salame ").deliver
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }


        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }

      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :last_name, :rut, :email, :password, :image, :kind, :active )
    end
end
