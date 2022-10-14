source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'

gem 'rails', '~> 6.1.7'
gem 'sqlite3', '~> 1.4'
gem 'puma', '~> 5.0'
gem 'net-smtp', '~> 0.3.1'
gem 'rubocop'
gem 'bootsnap', '>= 1.4.4', require: false

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails', '~> 5.0.0'
  gem 'factory_bot_rails'
  gem 'ffaker'
  gem 'faker'
  gem 'simplecov'  
end

group :development do
  gem 'listen', '~> 3.3'
  gem 'spring'
  gem 'better_errors'  
end

group :test do
  gem 'capybara', '>= 3.26'
  gem 'shoulda-matchers'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
