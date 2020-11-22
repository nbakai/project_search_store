class ApplicationController < ActionController::Base
    def current_order
        if current_user
            order = Order.where(user_id: current_user.id).where(state: "created").last
            if order.nil?
                order = Order.create(user: current_user, state: "created")
            end
            return order
        end
        nil
    end
    after_action :track_action
    # track events with ahoy_matey gem.
    def track_action
        ahoy.track "Viewed #{controller_name}##{action_name}", request.filtered_parameters
    end
end
