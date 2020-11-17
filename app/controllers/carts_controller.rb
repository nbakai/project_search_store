class CartsController < ApplicationController
    before_action :authenticate_user!
    def update
        product = params[:cart][:product_id]
        quantity = params[:cart][:quantity]
        current_order.add_product(product, quantity)
        redirect_to root_url, notice: "Producto agregado"
    end
    def show
        @order = current_order
    end
    def destroy
        order = Order.find(params[:id])
        order.destroy 
        redirect_to cart_path, notice: 'Se ha quitado el producto del carrito'
    end
    def clean
        order = Order.all
        Order.destroy_all
        redirect_to cart_path, notice: 'Se ha vaciado el carrito'
    end
    
#     def pay_with_cash
#         order = current_order 
#         price = order.total 
    
#         payment_method = PaymentMethod.find_by(code: "PEC")
#         Payment.create(
#             order_id: order.id, 
#             payment_method_id: payment_method.id,
#             state: "processing",
#             total: order.total,
#             token: response.token 
#         )
#         redirect_to root_path(response.token)
#     end
#     def process_cash_payment 
     
#         if response.success?
#             payment = Payment.find_by(token: response.token)
#             order = payment.order 
#             order.state = 'completed'
#             payment.state = 'completed'
#             ActiveRecord::Base.transaction do
#                 order.save!
#                 payment.save! 
#             end
#             redirect_to root_url, notice: "Compra exitosa"
#         else  
#             redirect_to root_url, alert: "Hemos tenido problemas para procesar tu pago"
#         end 
#     end    
end

