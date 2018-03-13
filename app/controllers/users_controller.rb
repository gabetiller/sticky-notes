class UsersController < ApplicationController


  def show
    @items = Item.all
    @user = User.find(current_user[:id])
  end
end
