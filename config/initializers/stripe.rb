# config/initializers/stripe.rb
Stripe.api_key = Rails.application.credentials.dig(:stripe, :private_key)