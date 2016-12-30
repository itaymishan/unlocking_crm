class OrdersController < ApplicationController

  def index

  end

  def create
    # $para['IMEI'] = "111111111111116";
    # $para['ID'] = "1382"; // got from 'imeiservicelist' [SERVICEID]
    @order = Order.create(order_params)
    redirect_to action: "index"
  end

  def show
    @order = Order.find_by(IMEI: params[:IMEI])
  end

  def new
    @order = Order.new
  end

  def order_params
    params.require(:order).permit(:imei, :email)
  end

end
