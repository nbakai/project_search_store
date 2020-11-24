class StoreMailer < ApplicationMailer
    default :from => ENV['EMAIL']
    def save_order_mail(user, orders, product)
      @user = user 
      @orders = orders
      @product = product
      mail(to: product.store.email, subject: "Esta es la orden del cliente #{user.email}")
    end
end
