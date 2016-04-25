source 'https://rubygems.org'

gem 'rails', '4.2.5.2'
gem 'mysql2', '~> 0.3.18'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0'
gem 'spring'
gem 'puma'
gem 'aws-sdk', '< 2'
gem 'rails-i18n'
gem 'versionist'
gem 'responders'
gem 'active_model_serializers', '~> 0.9.3'
gem 'simple_token_authentication', '~> 1.0'
gem 'rack-cors', '~> 0.4.0'
gem 'keen'
gem 'togglv8'
gem 'faraday'
gem 'slack-ruby-client'
gem 'clockwork'

group :production, :staging do
  gem 'rails_stdout_logging'
  gem 'rack-timeout'
end

group :development, :test do
  gem 'awesome_print'
  gem 'dotenv-rails'
  gem 'pry-rails'
  gem 'pry-byebug'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'guard-rspec', require: false
  gem 'rspec-nc', require: false
end

group :test do
  gem 'shoulda-matchers', require: false
end
