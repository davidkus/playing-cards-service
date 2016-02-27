ruby '2.3.0'
source 'https://rubygems.org'

gem 'rack'
gem 'sinatra', require: 'sinatra/base'
gem 'sinatra-param', require: 'sinatra/param', github: 'davidkus/sinatra-param'

gem 'unicorn'

gem 'rmagick'

group :development, :test do
  gem 'byebug'
end

group :test do
  gem "fuubar"
  gem "rspec"
  gem "rack-test"

  gem "codeclimate-test-reporter", require: nil
end
