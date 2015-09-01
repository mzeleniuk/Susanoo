class OrdersController < ApplicationController
  include CurrentCart

  skip_before_action :authorize, only: [:new, :create]
  before_action :set_order, only: [:show, :edit, :update, :destroy]
  before_action :set_cart

  def index
    @orders = Order.order('created_at desc').page(params[:page])
  end

  def show
  end

  def new
    if @cart.line_items.empty?
      redirect_to store_url, notice: 'Your Cart is empty.'
      return
    end
    @order = Order.new
  end

  def edit
  end

  def create
    @order = Order.new(order_params)
    @order.add_line_items_from_cart(@cart)

    if @order.save
      Cart.destroy(session[:cart_id])
      session[:cart_id] = nil

      OrderNotifier.received(@order).deliver_now
      redirect_to store_url, notice: t(:thanks_html)
    else
      @cart = current_cart
      render 'new'
    end
  end

  def update
    if @order.update(order_params)
      redirect_to @order, notice: 'Order was successfully updated.'
    else
      render 'edit'
    end
  end

  def destroy
    @order.destroy
    redirect_to orders_url, notice: 'Order was successfully destroyed.'
  end

  private

  def set_order
    @order = Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:name, :address, :email, :pay_type)
  end
end
