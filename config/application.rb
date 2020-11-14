require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module BuscaTiendas
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  #   config.action_mailer.default_url_options = { :host => 'localhost:3000' }
  #   config.action_mailer.delivery_method = :smtp
  #   config.action_mailer.perform_deliveries = true
  #   config.action_mailer.raise_delivery_errors = true
  #   config.action_mailer.default :charset => "utf-8"
  
  #   ActionMailer::Base.smtp_settings = {
  #     :address => "smtp.gmail.com",
  #     :port => 587,
  #     :authentication => :plain,
  #     :domain => 'gmail.com',
  #     :user_name => ENV['EMAIL'],
  #     :password => ENV['EMAIL_PASSWORD'],
  #   }
  end
end
