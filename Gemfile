source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'

gem 'puma', '~> 5.0'
gem 'rails', '~> 7.0.4'
gem 'sassc-rails', '~> 2.1'
gem 'sorcery'
# gem 'sprockets-rails'
gem 'sqlite3', '~> 1.4'
gem 'tty-spinner', '~> 0.9.3'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
gem 'validates_email_format_of' # You don't want to fall into Regex Hell

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem 'spring'
end
