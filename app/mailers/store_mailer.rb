class StoreMailer < ApplicationMailer
    default :from => ENV['EMAIL']
    def save_order_mail(user, order, product)
      @user = user 
      @order = order
      @product = product
      mail(to: product.store.email, subject: "Esta es la orden del cliente #{user.email}")
    end
 
end
