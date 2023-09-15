source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.2"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.0.7"

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem "sprockets-rails"

# Use pg as the database for Active Record
gem "pg", "~> 1.1"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 5.6"

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem "importmap-rails"

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails"

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder"

# Use Redis adapter to run Action Cable in production
gem "redis", "~> 4.0"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Sass to process CSS
# gem "sassc-rails"

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
gem "image_processing", "~> 1.2"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri mingw x64_mingw ]

  # # These are for debugger
  # # Provides the protocol to establish communication between the debugger engine
  # gem "ruby-debug-ide", "~> 0.7.3"

  # # Faster execution speed and 2.0.0 compatibility is achieved by utilizing a TracePoint mechanism in the Ruby C API.
  # gem 'debase', '~> 0.2.5.beta2', require: false
  # End Debugger gems
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem 'better_errors'
  gem 'binding_of_caller'
  gem "web-console"

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end

# Devise is a flexible authentication solution for Rails based on Warden.
gem 'devise'

# Noticed support these notification delivery methods out of the box.
gem "noticed", "~> 1.6"

# Ransack will help you easily add searching to your Rails application, without any additional dependencies.
gem "ransack", "~> 4.0"

# FriendlyId is the "Swiss Army bulldozer" of slugging and permalink plugins for Active Record. 
gem "friendly_id", "~> 5.5"

# Provides the protocol to establish communication between the debugger engine
gem "ruby-debug-ide", "~> 0.7.3"

# Faster execution speed and 2.0.0 compatibility is achieved by utilizing a TracePoint mechanism in the Ruby C API.
gem 'debase', '~> 0.2.5.beta2', require: true

# Designed to help you increase your application's performance by reducing the number of queries it makes.
gem "bullet", "~> 7.0"

# Makes your Rails controllers into step-by-step wizards.
gem "wicked", "~> 2.0"

# A library for bulk inserting data using ActiveRecord.
gem "activerecord-import", "~> 1.5"

gem "stripe", "~> 9.2"
gem "pay", "~> 6.8"
