class LocalConfirmationsController < ApplicationController

  def create
    user = current_user
    item = Item.find(params[:item_id])
    local_confirmation = LocalConfirmation.create(user_id: user.id, item_id: item.id)
  end

end
