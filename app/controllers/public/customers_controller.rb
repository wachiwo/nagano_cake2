class Public::CustomersController < ApplicationController
   before_action :authenticate_customer!
  def index
  end

  def show
    @customer = current_customer
  end


  def edit
   @customer = current_customer
  end

  def update
    customer = Customer.find(params[:id])
    customer.update(customer_params)
   redirect_to public_customer_path(current_customer.id)
  end

  def unsubscribe
  end
  private
  def address_params
    params.require(:customer).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :postal_code, :address, :telephone_number, :email)
  end
end
