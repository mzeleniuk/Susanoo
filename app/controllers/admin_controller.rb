class AdminController < ApplicationController
  before_action :set_cart, only: [:index]
  include CurrentCart

  def index
    @total_orders = Order.count
  end
end
