class Public::AddressesController < ApplicationController

  def new
    @address = Address.new

  end

  def create

    @address = Address.new(address_params)
    @address.customer_id = current_customer.id #カレントユーザに変更する
    if @customer_address.save!
    redirect_to public_addresses_path
    
    else
      @customer = current_customer
      @address = @customer.address
      redirect_back(fallback_location: public_addresses_path)
    end
  end

  def index
    @address = Address.new
    @addresses = Address.all
    @customer = current_customer
   
  end

  def edit
    @address = Address.find(params[:id])
  end

  def update
    address = Address.find(params[:id])
    address.update(address_params)
    redirect_to public_addresses_path
  end

  def destroy
    address = Address.find(params[:id])  # データ（レコード）を1件取得
    address.destroy  # データ（レコード）を削除
    redirect_to public_addresses_path  # 投稿一覧画面へリダイレクト
  end

  private
  def address_params
    params.require(:address).permit(:name, :postal_code, :address)
  end
end
