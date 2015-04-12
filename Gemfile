source 'https://rubygems.org'

ruby '2.1.5'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0'

# if "Can't connect to local MySQL server through socket '/tmp/mysql.sock'"
# mysql.server start && rake db:create
gem 'mysql2', '0.3.17'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.2'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer', '0.12.1'

# Use jquery as the JavaScript library
gem 'jquery-rails', '4.0.3'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'
gem "slim", '3.0.0'

gem "font-awesome-rails", '4.3.0.0'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', '~> 0.4.0', require: false
end

gem 'quiet_assets', '1.1.0', group: :development

group :test do
  gem 'rspec-rails', '3.1.0'
  gem 'database_cleaner', '1.4.1'
  gem 'capybara', '2.4.4'
  gem 'launchy'
  gem 'poltergeist'
end

group :development, :test do
  gem 'byebug', '>= 4.0.0'
  gem 'dotenv-rails', '2.0.0'
  gem 'factory_girl_rails', '4.5.0'
end

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
