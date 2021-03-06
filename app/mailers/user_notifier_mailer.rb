class UserNotifierMailer < ApplicationMailer
    default :from => ENV['EMAIL']
  
    # send a signup email to the user, pass in the user object that   contains the user's email address
    def send_signup_email(user)
      @user = user
      mail( :to => @user.email,
      :subject => 'Gracias por registrarte en nuestra aplicación! (:' )
    end
    # def order_confirmation(user, order)
    #   @user = user
    #   @order = order
    #   mail(to: user.email, subject: 'Su orden ha sido creada')
    # end
    def save_order_email(user, orders, product)
      @product = product
      @user = user 
      @orders = orders
      mail(to: user.email, subject: 'Su orden ha sido creada')
    end
end