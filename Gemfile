# frozen_string_literal: true

source 'https://rubygems.org'

ruby File.read('.ruby-version').strip

gem 'rack', '2.2.3.1'
gem 'sinatra', '2.2.0', require: 'sinatra/base'
gem 'sinatra-param', require: 'sinatra/param', github: 'davidkus/sinatra-param'

gem 'puma', '5.6.4'

gem 'rmagick', '4.2.3'

gem 'require_all', '~> 3.0'

group :development, :test do
  gem 'byebug'
end

group :test do
  gem 'codeclimate-test-reporter', require: nil
  gem 'fuubar'
  gem 'rack-test'
  gem 'rspec'
  gem 'simplecov', '0.21.2', require: false
end
