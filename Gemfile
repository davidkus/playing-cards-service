#ruby=ruby-2.4.1
#ruby-gemset=playing-cards-service

ruby '2.4.1'
source 'https://rubygems.org'

gem 'rack', '1.6.11'
gem 'sinatra', '1.4.8', require: 'sinatra/base'
gem 'sinatra-param', require: 'sinatra/param', github: 'davidkus/sinatra-param'

gem 'unicorn', '5.4.0'

gem 'rmagick', '2.16.0'

group :development, :test do
  gem 'byebug'
end

group :test do
  gem "fuubar"
  gem "rspec"
  gem "rack-test"
  gem 'simplecov', :require => false
  gem "codeclimate-test-reporter", require: nil
end
