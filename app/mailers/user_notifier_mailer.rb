class UserNotifierMailer < ApplicationMailer
    default :from => 'melixbq@gmail.com'
  
    # send a signup email to the user, pass in the user object that   contains the user's email address
    def send_signup_email(user)
      @user = user
      mail( :to => @user.email,
      :subject => 'Gracias por registrarte en nuestra aplicación! (:' )
    end

    # def send_order_email(user, orders)
    #   @user = user 
    #   @orders = orders
    #   mail( :to => @user.email,
    #   :subject =>  'esta es su orden!' )
    # end
    
end