# frozen_string_literal: true

require 'rubygems'
require 'bundler'
require 'require_all'

Bundler.require(:default)
Bundler.require(Sinatra::Base.environment)

require_all 'app'
