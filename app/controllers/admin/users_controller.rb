class Admin::UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  before_action :authenticate_user!

  layout 'admin'

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
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
        format.html { redirect_to admin_users_url, notice: 'User was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update

      if user_params[:password].blank?
        @user.update_without_password(user_params_without_password)
      else
        @user.update(user_params)
      end

      if @user.valid?
        if @user == current_user
          sign_in(@user, bypass: true)
        end
        redirect_to admin_users_url
      else
        render action: 'edit'
      end

      # if @user.update(user_params)
      #   format.html { redirect_to admin_users_url, notice: 'User was successfully updated.' }
      # else
      #   format.html { render :edit }
      #   format.json { render json: [:admin, @user.errors], status: :unprocessable_entity }
      # end

  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to admin_users_url, notice: 'User was successfully destroyed.' }
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
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

    def user_params_without_password
      user_params.delete(:password)
      user_params.delete(:password_confirmation)
      user_params
    end


end
