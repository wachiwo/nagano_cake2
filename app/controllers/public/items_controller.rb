class Public::ItemsController < ApplicationController
  def index
    @items_all = Item.all
    @items = Item.page(params[:page]).per(8)
  end

  def show
    @item = 1
   # @item = Item.find(params[:id])
  end

    private
  def item_params
    params.require(:item).permit(:name, :price, :image)
  end
end
