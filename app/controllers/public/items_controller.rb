class Public::ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
  end

    private
  def list_params
    params.require(:item).permit(:name, :price, :image)
  end
end
