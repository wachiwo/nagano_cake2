class Admin::HomesController < ApplicationController
  def top
    @customers = Customer.all
  end

  def index
    @items = Item.all
  end
end
