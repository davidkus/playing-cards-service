source 'https://rubygems.org'

ruby File.read(".ruby-version").strip

gem 'rack', '2.2.3'
gem 'sinatra', '2.1.0', require: 'sinatra/base'
gem 'sinatra-param', require: 'sinatra/param', github: 'davidkus/sinatra-param'

gem 'puma', '5.6.4'

gem 'rmagick', '4.2.3'

gem 'require_all', '~> 3.0'

group :development, :test do
  gem 'byebug'
end

group :test do
  gem "fuubar"
  gem "rspec"
  gem "rack-test"
  gem 'simplecov', '0.21.2', :require => false
  gem "codeclimate-test-reporter", require: nil
end
