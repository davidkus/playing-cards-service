# frozen_string_literal: true

class ApplicationController < Sinatra::Base
  set :show_exceptions, :after_handler

  before do
    content_type 'text/plain'
  end

  error Magick::ImageMagickError do
    content_type 'text/plain'
    halt 400, 'Bad Request'
  end
end
