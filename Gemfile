source 'https://rubygems.org'
ruby '2.2.4'

gem 'rails', '4.2.7.1'
gem 'sass-rails', '5.0.6'
gem 'uglifier', '2.7.2'
gem 'coffee-rails', '4.1.0'
gem 'jquery-rails', '4.0.5'
gem 'jquery-ui-rails', '5.0.3'
gem 'turbolinks', '2.5.3'
gem 'jbuilder', '2.2.13'
gem 'sdoc', '0.4.1', group: :doc
gem 'bcrypt', '3.1.10'
gem 'kaminari', '0.16.3'

# Use Puma as the app server
gem 'puma', '~> 3.6'

# Test coverage
gem 'simplecov', '0.10.0', require: false, group: :test
gem 'codeclimate-test-reporter', '0.4.7', group: :test, require: nil

# Hooks Roadie into Rails application to help with email generation
gem 'roadie-rails', '~> 1.1'

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 3.3'

  # A static analysis security vulnerability scanner for Ruby on Rails applications
  gem 'brakeman', require: false
end

group :development, :test do
  gem 'sqlite3', '1.3.10'
  gem 'byebug', '4.0.5'
  gem 'spring', '1.3.6'
  gem 'letter_opener', '1.4.1'
end

group :production do
  gem 'pg', '0.18.1'
  gem 'rails_12factor', '0.0.3'
end
