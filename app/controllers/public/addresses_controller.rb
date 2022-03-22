class Public::AddressesController < ApplicationController

  def new
    @address = Addresses.new
   
  end
    def create
      @address = Addresses.new
    address = Address.new(address_params)
    address.save

    #redirect_to public_addresses_index_path
  end


  def index
    @addresses = Address.all
  end

  def edit
    @address = Address.find(params[:id])
  end
  
  private
  def list_params
    params.require(:address).permit(:name, :postal_code, :address)
  end
end
