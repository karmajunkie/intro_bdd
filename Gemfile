source 'http://rubygems.org'

gem 'rails', '3.0.0'
gem "devise", "1.1.2"

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'sqlite3-ruby', :require => 'sqlite3'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug'

# Bundle the extra gems:
# gem 'bj'
# gem 'nokogiri'
# gem 'sqlite3-ruby', :require => 'sqlite3'
# gem 'aws-s3', :require => 'aws/s3'

# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
# group :development, :test do
#   gem 'webrat'
# end
group :test, :development do
  gem "rspec-rails", "= 2.0.0.beta.20"
  gem "shoulda"
  gem "factory_girl_rails"
  gem "email_spec"
end

group :cucumber do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'cucumber-rails'
  gem 'cucumber'
  gem 'rspec-rails', "= 2.0.0.beta.20"
  gem 'spork'
  gem 'launchy'    # So you can do Then show me the page
  gem "factory_girl_rails"
  gem "ruby-debug"
  gem "email_spec"
end
