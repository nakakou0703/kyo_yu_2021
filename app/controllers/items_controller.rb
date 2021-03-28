class ItemsController < ApplicationController
  
  def index
    @items = Item.all.order("created_at DESC").limit(8)
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end
  
  private

  def item_params
    params.require(:item).permit(:name, :image, :text, :stock_id, :storage_location, :deployment, :arrival_day).merge(user_id: current_user.id)
  end

end
