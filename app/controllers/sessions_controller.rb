class SessionsController < ApplicationController
  include CurrentCart

  skip_before_action :authorize
  before_action :set_cart

  def new
  end

  def create
    if User.count.zero?
      redirect_to new_user_path
    else
      user = User.find_by(name: params[:name])
      if user and user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to admin_url
      else
        redirect_to login_url, alert: 'Invalid user/password combination!'
      end
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to store_url, notice: 'Logged out!'
  end
end
