# frozen_string_literal: true

source 'https://rubygems.org'

ruby File.read('.ruby-version').strip

gem 'rack', '~> 2.2.0'
gem 'sinatra', '~> 2.2.0', require: 'sinatra/base'
gem 'sinatra-param', require: 'sinatra/param', github: 'davidkus/sinatra-param'

gem 'puma', '~> 5.6.0'

gem 'rmagick', '~> 4.2.0'

gem 'require_all', '~> 3.0.0'

group :development, :test do
  gem 'byebug'
  gem 'rubocop'
end

group :test do
  gem 'codeclimate-test-reporter', '~> 1.0.0', require: nil
  gem 'fuubar', '~> 2.5.0'
  gem 'rack-test', '~> 2.0.0'
  gem 'rspec', '~> 3.11.0'
  gem 'simplecov', '~> 0.21.2', require: false
end
