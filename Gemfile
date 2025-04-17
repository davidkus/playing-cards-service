# frozen_string_literal: true

source 'https://rubygems.org'

ruby File.read('.ruby-version').strip

gem 'rack', '~> 3.1.8'
gem 'sinatra', '~> 4.1.0', require: 'sinatra/base'
gem 'sinatra-param', require: 'sinatra/param', github: 'davidkus/sinatra-param'

gem 'puma', '~> 6.4.3'

gem 'rmagick', '~> 5.3.0'

gem 'require_all', '~> 3.0.0'

group :development, :test do
  gem 'byebug'
  gem 'rubocop'
end

group :test do
  gem 'codeclimate-test-reporter', '~> 1.0.0', require: nil
  gem 'fuubar', '~> 2.5.0'
  gem 'rack-test', '~> 2.1.0'
  gem 'rspec', '~> 3.12.0'
  gem 'simplecov', '~> 0.22.0', require: false
end
