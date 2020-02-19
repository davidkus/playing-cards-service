#ruby=ruby-2.6.5
#ruby-gemset=playing-cards-service

ruby '2.6.5'
source 'https://rubygems.org'

gem 'rack', '1.6.13'
gem 'sinatra', '1.4.8', require: 'sinatra/base'
gem 'sinatra-param', require: 'sinatra/param', github: 'davidkus/sinatra-param'

gem 'puma', '4.3.1'

gem 'rmagick', '2.16.0'

gem 'require_all', '~> 3.0'

group :development, :test do
  gem 'byebug'
end

group :test do
  gem "fuubar"
  gem "rspec"
  gem "rack-test"
  gem 'simplecov', '0.17.1', :require => false
  gem "codeclimate-test-reporter", require: nil
end
