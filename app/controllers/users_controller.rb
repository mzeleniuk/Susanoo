class UsersController < ApplicationController
  include CurrentCart

  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :set_cart

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

    if @user.save
      redirect_to users_url, notice: "User #{@user.name} was successfully created!"
    else
      render 'new'
    end
  end

  def update
    current_password = params[:user].delete(:current_password)

    if @user.authenticate(current_password) && @user.update(user_params)
      redirect_to users_url, notice: "User #{@user.name} was successfully updated!"
    else
      @user.errors.add(:current_password, 'is incorrect') unless @user.authenticate(current_password)
      render 'edit'
    end
  end

  def destroy
    begin
      @user.destroy
      flash[:notice] = "User #{@user.name} has been deleted!"
    rescue StandardError => e
      flash[:notice] = e.message
    end

    redirect_to users_url, notice: 'User was successfully destroyed!'
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :current_password, :password, :password_confirmation)
  end
end
