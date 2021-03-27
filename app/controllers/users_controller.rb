class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    #binding.pry
  end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      redirect_to root_path
    end
  end

end