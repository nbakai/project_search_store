# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

    # ActionMailer::Base.smtp_settings = {
    #   :address => "smtp.gmail.com",
    #   :port => 587,
    #   :authentication => :plain,
    #   :domain => 'gmail.com',
    #   :user_name => ENV['EMAIL'],
    #   :password => ENV['EMAIL_PASSWORD'],
    # }
  
# ActionMailer::Base.smtp_settings = {
#     :user_name => 'apikey',
#     :password => ENV['SENDGRID_API_KEY'],
#     :domain => 'melixbq@gmail.com',
#     :address => 'smtp.sendgrid.net',
#     :port => 587,
#     :authentication => :plain,
#     :enable_starttls_auto => true
# }