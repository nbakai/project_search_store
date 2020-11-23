class UsersController < ApplicationController
  def index
    @user  = User.find(params[:id])
  end

  def show 
    @user  = User.find(params[:id])
    @order = Order.all 
    @product = Product.all
    # if @order.find_by(user_id: current_user)
    #   @chart_user = Order.where(user_id: current_user).group_by_day(:created_at).count
    #   @chart2_user = Comment.where(user_id: current_user).group_by_hour(:created_at).count
    # end
    if @order.find_by(user_id: @user.id)
      @chart_user = Order.where(user_id: @user.id).group_by_day(:created_at).count
      #@chart2_user = Comment.where(user_id: @user.id).group_by_hour(:created_at).count
    end
    # if @order.find_by(user_id: current_user) 
    #   @order_count = @order.find_by(user_id: current_user)
    #   @oder_count_sum = @order_count.sum
    # end
    # @order = current_order

    #@chart_visits = Visit.where(user: current_user).group_by_day(:started_at, last: 7).count
  end

end