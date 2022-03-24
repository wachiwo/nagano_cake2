class Public::CartItemsController < ApplicationController
  def index
    @items = Item.all
  end
  
  def update
    
  end
  
  def destroy
     item = Item.find(params[:id])  # データ（レコード）を1件取得
    item.destroy  # データ（レコード）を削除
    redirect_to public_cart_items_index_path
  end
  
  def destroy_all
  end
  
  def create
  end
  


end
