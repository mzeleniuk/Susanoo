class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :set_cart
  include CurrentCart

  def index
    @users = User.order(:name).page(params[:page])
  end

  def show
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to users_url, notice: "User #{@user.name} was successfully created!" }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    current_password = params[:user].delete(:current_password)
    respond_to do |format|
      if @user.authenticate(current_password) && @user.update(user_params)
        format.html { redirect_to users_url, notice: "User #{@user.name} was successfully updated!" }
        format.json { render :show, status: :ok, location: @user }
      else
        @user.errors.add(:current_password, 'is incorrect') unless @user.authenticate(current_password)
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    begin
      @user.destroy
      flash[:notice] = "User #{@user.name} has been deleted!"
    rescue StandardError => e
      flash[:notice] = e.message
    end
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed!' }
      format.json { head :no_content }
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :current_password, :password, :password_confirmation)
  end
end
