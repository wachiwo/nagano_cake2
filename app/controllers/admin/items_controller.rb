class Admin::ItemsController < ApplicationController


  def new
    @item = Item.new
  end

  def create
    item = Item.new(item_params)
    item.save
    redirect_to '/admin/items'
  end

  def index
    @items = Item.all
  end

  def show
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    item = Item.find(params[:id])
    item.update(item_params)
    redirect_to admin_items_path(item.id)
  end
  
   private
  # ストロングパラメータ
  def list_params
    params.require(:item).permit(:genre_id, :name, :introduction, :price, :is_active, :image)
  end
end
