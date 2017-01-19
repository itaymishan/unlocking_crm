class OrdersController < ApplicationController

  http_basic_authenticate_with name: ENV['BASIC_USER'], password: ENV['BASIC_PASS'], except: :show
  before_action :set_order, only: :show

  def index
    @orders = Order.all
  end

  def create
    @order = Order.create(order_params)
    redirect_to action: "index"
  end

  def show
    @order
  end

  def new
    @order = Order.new
  end

  def order_params
    params.require(:order).permit(:imei, :customer_name, :customer_email)
  end

  def set_order    
    @order = Order.find_by(imei: params[:imei])
    @order.fetch_order_status
  end

end
