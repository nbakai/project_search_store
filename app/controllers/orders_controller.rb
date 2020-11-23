class OrdersController < ApplicationController
    before_action :authenticate_user!
    def index
        @orders = Order.where(user_id: current_user.id, paid: false)
    end
    
    def create
        
        @product = Product.find(params[:product_id])
       
        #@order = Order.find_or_create_by(user_id: current_user.id, product_id: @product.id, paid: false)
        if @product && (@product.stock > 0)
            @order = Order.find_or_create_by(user_id: current_user.id, product_id: @product.id, paid: false)
            @product.stock -= 1
            @product.save!
            @order.quantity += 1 

            if @order.save! 
                @user = current_user 
                # UserNotifierMailer.order_confirmation(@user, @order).deliver
                redirect_to root_path, notice: 'Se ha añadido el producto al carro'
            else 
                redirect_to root_path, alert: 'No se ha podido añadir al carro'
            end  
        else 
            redirect_to root_path, alert: 'No se ha podido añadir el producto, al parecer ya no hay stock :('
        end
        
    end
    def save
        @user = current_user 
        @orders = Order.where(user_id: current_user.id, paid: false)
        UserNotifierMailer.save_order_email(@user, @orders).deliver
        redirect_to orders_path, notice: 'Se ha enviado un mail con tu orden'
    end 

    def destroy
        @order = Order.find(params[:id])
        @order.destroy 
        redirect_to orders_path, notice: 'Se ha quitado el producto del carrito'
    end
    def clean
        @order = Order.where(paid: false)
        @order.destroy_all
        redirect_to orders_path, notice: 'Se ha vaciado el carrito'
    end
end
