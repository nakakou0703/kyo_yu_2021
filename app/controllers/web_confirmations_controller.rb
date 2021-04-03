class WebConfirmationsController < ApplicationController

  def create
    user = current_user
    item = Item.find(params[:item_id])
    web_confirmation = WebConfirmation.create(user_id: user.id, item_id: item.id)
  end

end
