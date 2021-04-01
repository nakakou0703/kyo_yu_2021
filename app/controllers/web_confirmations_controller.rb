class WebConfirmationsController < ApplicationController

  def create
    #binding.pry
    #@item = Item.find(params[:item_id])
    user = current_user
    item = Item.find(params[:item_id])
    web_confirmation = WebConfirmation.create(user_id: user.id, item_id: item.id)
  end

  

  #def destroy
    #@item = Item.find(params[:item_id])
    #user = current_user
    #item = Item.find(params[:item_id])
    #web_confirmation = WebConfirmation.find_by(user_id: user.id, item_id: item.id)
    #web_confirmation.delete
  #end
  
end
