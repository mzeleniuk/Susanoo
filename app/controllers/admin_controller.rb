class AdminController < ApplicationController
  include CurrentCart

  before_action :set_cart, only: [:index]

  def index
    @total_orders = Order.count
  end
end
