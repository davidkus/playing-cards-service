class DiceController < ApplicationController
  helpers Sinatra::Param

  before do
    content_type 'image/png'
  end

  get '/:dice.png' do
    param :dice, String, required: true, format: /^[1-6]{1,5}$/

    ImageService.generate_image params[:dice]
  end

end
