# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

Rails.application.configure do
    BetterErrors::Middleware.allow_ip! "0.0.0.0/0"
end
