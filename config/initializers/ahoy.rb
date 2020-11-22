class Ahoy::Store < Ahoy::DatabaseStore
end

# set to true for JavaScript tracking
Ahoy.api = false
Ahoy.visit_duration = 30.minutes
Ahoy.user_agent_parser = :device_detector
 # Get the bots and know when they index you...
Ahoy.track_bots = true 