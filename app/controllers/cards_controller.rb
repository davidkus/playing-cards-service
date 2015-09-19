class CardsController < ApplicationController
  helpers Sinatra::Param

  before do
    content_type 'image/png'
  end

  get '/:cards' do
    param :cards, Array, required: true, delimiter: "-"
    param :expand, Boolean, default: false

    if !params[:cards].map{ |c| c =~ /^[0-9A-Z]{1,2}[SDHCM]$/ }.reduce{ |a,b| a && b }
      raise Sinatra::Param::InvalidParameterError
    end

    ImageService.generate_image params[:cards], expand: params[:expand]
  end

end
