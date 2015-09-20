class DiceController < ApplicationController
  helpers Sinatra::Param

  before do
    content_type 'image/png'
  end

  get '/:dice' do
    param :dice, Array, required: true, delimiter: '-'

    if !params[:dice].map{ |c| c =~ /^[1-6][F]$/ }.reduce{ |a,b| a && b }
      raise Sinatra::Param::InvalidParameterError
    end

    ImageService.generate_image params[:dice], expand: true
  end

end
