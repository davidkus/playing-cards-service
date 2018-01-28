class CardsController < ApplicationController
  helpers Sinatra::Param

  get '/:cards' do
    param :cards, Array, required: true, delimiter: "-", format: /^[0-9A-Z]{1,2}[SDHCM]$/
    param :expand, Boolean, default: false

    content_type 'image/png'
    ImageService.generate_image params[:cards], expand: params[:expand]
  end

end
