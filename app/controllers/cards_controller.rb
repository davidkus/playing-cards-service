class CardsController < ApplicationController
  helpers Sinatra::Param

  before do
    content_type 'image/png'
  end

  get '/:cards.png' do
    param :cards, String, required: true, format: /^[a-zA-Z0]{1,8}$/

    ImageService.generate_image params[:cards]
  end

end
