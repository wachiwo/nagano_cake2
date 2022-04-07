class Admin::OrdersController < ApplicationController
  def show
    @order = Order.find(params[:id])
    @orders = Order.all
     @order_details = OrderDetail.where(order_id: @order)
      @production_status = @order.order_details.pluck(:production_status)
  end
  
  def update 
     @order = Order.find(params[:id])
     redirect_to admin_order_path(@order)
  end 
end
