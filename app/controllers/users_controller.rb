class UsersController < ApplicationController
  def index
    @user  = User.find(params[:id])
   
    
  end
  def show 
    @user  = User.find(params[:id])
    @order = current_order
  end

end