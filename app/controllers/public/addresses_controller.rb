class Public::AddressesController < ApplicationController

  def new
    @address = Address.new

  end

  def create
   
    address = Address.new(address_params)
    address.customer_id = 1 #カレントユーザに変更する
    address.save!
    redirect_to public_addresses_path
  end


  def index
    @address = Address.new
    @addresses = Address.all
  end

  def edit
    @address = Address.find(params[:id])
  end

  private
  def address_params
    params.require(:address).permit(:name, :postal_code, :address)
  end
end
