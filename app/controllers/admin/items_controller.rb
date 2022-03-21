class Admin::ItemsController < ApplicationController


  def new
    @item = Item.new
    @genres = Genre.all
  end

  def create
    item = Item.new(item_params)
    item.save!
    redirect_to '/admin/items'
  end

  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
    @genres = Genre.all
  end


  def edit
    @item = Item.find(params[:id])
  end

  def update
    item = Item.find(params[:id])
    item.update(item_params)
    redirect_to admin_item_path(params[:id])#item.id
  end

   private
  # ストロングパラメータ
  def item_params
    params.require(:item).permit(:genre_id, :name, :introduction, :price, :is_active, :image, :sales_status)#index_items_on_genre_id
  end
end