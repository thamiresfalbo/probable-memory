source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.0'

gem 'puma', '~> 5.0'
gem 'rails', '~> 7.0.4'
gem 'sassc-rails', '~> 2.1'
gem 'sorcery'
gem 'sprockets-rails'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
gem 'validates_email_format_of'

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'minitest-rails', '~> 7.0.0'
  gem 'tty-spinner', '~> 0.9.3'
end

group :test do
  gem 'capybara'
  gem 'factory_bot'
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'webdrivers'
end

group :development do
  gem 'spring'
end

group :production do
  gem 'pg'
  gem 'pghero'
end
