# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.4.4'

gem 'acts-as-taggable-on'
gem 'cancancan'
gem 'devise'
gem 'puma'
gem 'rails'
gem 'sassc-rails'
gem 'sprockets-rails'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
gem 'validates_email_format_of'

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails'
  gem 'rspec-rails'
  gem 'tty-spinner'
end

group :test do
  gem 'capybara'
  gem 'faker'
  gem 'webdrivers'
end

group :development do
  gem 'htmlbeautifier'
  gem 'spring'
end

group :production do
  gem 'pg'
  gem 'pghero'
end
