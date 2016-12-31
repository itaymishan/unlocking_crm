class OrdersController < ApplicationController

  def index
    @orders = Order.all
  end

  def create
    @order = Order.create(order_params)
    redirect_to action: "index"
  end

  def show
    @order = Order.find_by(imei: params[:IMEI])
  end

  def new
    @order = Order.new
  end

  def order_params
    params.require(:order).permit(:imei, :customer_name, :customer_email)
  end

end
