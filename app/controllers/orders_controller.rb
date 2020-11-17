class OrdersController < ApplicationController
    before_action :authenticate_user!
    def index
        @orders = Order.where(user_id: current_user.id)
    end
    
    # def create
    #     @product = Product.find(params[:product_id])
    #     @order = Order.find_or_create_by(user_id: current_user.id,product_id: product.id)
    #     @order.quantity += 1 

    #     if order.save 
    #         redirect_to root_path, notice: 'Se ha añadido el producto al carro'
    #     else 
    #         redirect_to root_path, alert: 'No se ha podido añadir al carro'
    #     end  
    # end

    def destroy
        order = Order.find(params[:id])
        order.destroy 
        redirect_to orders_path, notice: 'Se ha quitado el producto del carrito'
    end
    def clean
        order = Order.all
        Order.destroy_all
        redirect_to orders_path, notice: 'Se ha vaciado el carrito'
    end
    
    
    
end
