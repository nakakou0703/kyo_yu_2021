class ItemsController < ApplicationController

  before_action :item_find, only: [:show, :destroy, :edit, :update]
  
  def index
    @items1 = Item.all.order("arrival_day DESC").limit(8)
    @items2 = Item.all.order("arrival_day DESC").limit(16).drop(8)
    @items3 = Item.all.order("arrival_day DESC").limit(24).drop(16)
    @items4 = Item.all.order("arrival_day DESC").limit(32).drop(24)
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
  
  def show
    # @web_confirmation = WebConfirmation.where(params[:id])
    # @local_confirmation = LocalConfirmation.where(params[:id])
    @web_confirmations = WebConfirmation.where(item_id: params[:id])
    @local_confirmations = LocalConfirmation.where(item_id: params[:id])
  end

  def destroy
     @item.destroy
    redirect_to root_path
  end

  def edit
  end

  def update
    if @item.update(item_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def search
    @items = Item.search(params[:keyword]).order("arrival_day DESC")
  end
  


  private

  def item_params
     params.require(:item).permit(:name, :image, :text, :stock_id, :storage_location, :deployment, :arrival_day)
    #.merge(user_id: current_user.id)  を組み込むように変える
  end

  def item_find
    @item = Item.find(params[:id])
  end

end
