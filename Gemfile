# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'

gem 'bootsnap', '>= 1.4.2', require: false
gem 'config'
gem 'dotenv-rails', require: 'dotenv/rails-now'
gem 'jbuilder', '~> 2.7'
gem 'mysql2', '>= 0.4.4'
gem 'psych', '< 4'
gem 'puma', '~> 4.1'
gem 'rails', '~> 7.0.2.3'
gem 'redis'
gem 'rubocop', require: false
gem 'sass-rails', '>= 6'
gem 'sidekiq'
gem 'turbolinks', '~> 5'
gem 'webpacker', '~> 4.0'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails'
  gem 'ffaker'
  gem 'pry'
  gem 'rspec-rails', '~> 6.0.0'
end

group :development do
  gem 'listen', '~> 3.2'
  gem 'spring', '~> 3.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'database_cleaner'
  gem 'shoulda-matchers'
  gem 'simplecov', require: false
end
