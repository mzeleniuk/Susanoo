class StoreController < ApplicationController
  skip_before_action :authorize
  before_action :set_cart
  include CurrentCart

  def index
    if params[:set_locale]
      redirect_to store_url(locale: params[:set_locale])
    else
      @products = Product.order(:title).page(params[:page])
    end
  end
end
