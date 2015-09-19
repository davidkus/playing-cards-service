class DiceController < ApplicationController
  helpers Sinatra::Param

  before do
    content_type 'image/png'
  end

  get '/:dice.png' do
    param :dice, Array, required: true, delimiter: '-'

    ImageService.generate_image params[:dice], expand: true
  end

end
