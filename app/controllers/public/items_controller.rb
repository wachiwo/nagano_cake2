class Public::ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = 1
   # @item = Item.find(params[:id])
  end

    private
  def list_params
    params.require(:item).permit(:name, :price, :image)
  end
end
