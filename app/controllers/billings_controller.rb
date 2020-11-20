class BillingsController < ApplicationController
    def pre_pay
        @orders = current_user.orders.where(paid: false)
        @user = current_user
        
        total = 0
        @orders.each do |order|
            total += (order.product.price * order.quantity)
        end
        items = @orders.map do |order|
            item = {}
            item[:name] = order.product.name 
            item[:sku] = order.product.id.to_s
            item[:price] = order.product.price
            item[:currency] = 'USD'
            item[:quantity] = order.quantity
            item  
        end
        # UserNotifierMailer.send_order_email(@user, @orders).deliver 
        # root_path
        payment = PayPal::SDK::REST::Payment.new({
            intent: 'sale',
            payer: {
                payment_method: 'Paypal'
            },
            redirect_urls: {
                return_url: "http://localhost:3000/billings/execute",
                cancel_url: "http://localhost:3000/" 
                #return_url: 'https://busca-tiendas.herokuapp.com/execute', 
                #cancel_url: 'https://busca-tiendas.herokuapp.com/'
            },
            
                transactions: [
                    {
                        item_list: {
                            items: items
                        },
                        amount: {
                            total: total.to_s, 
                            currency: 'USD'
                        },
                        description: 'Compra desde mi tienda ocso en Rails'
                    }
                ]
            
        })
        if payment.create 
            redirect_url = payment.links.find{|link| link.method == 'REDIRECT'}.href 
            redirect_to redirect_url 
        else  
            render json: payment.errors  
        end 
    end
    
    def execute
        paypal_payment = PayPal::SDK::REST::Payment.find(params[:paymentId])
        if paypal_payment.execute(payer_id: params[:PayerID])
            amount = paypal_payment.transactions.first.amount.total
            billing = Billing.create(
                user_id: current_user.id,
                code: paypal_payment.id,
                amount: amount,
                payment_method: 'PayPal',
                currency: 'USD'
            )
            @orders = current_user.orders.where(paid: false)
            @orders.update_all(paid: true, billing_id: billing.id)
            redirect_to root_path, notice: 'El pago se ha realizado exitosamente :D '
        else  
            redirect_to root_path, notice: 'No se ha podido realizar el pago con PayPal'

        end 
    
    end

end
