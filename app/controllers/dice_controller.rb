class DiceController < ApplicationController
  helpers Sinatra::Param

  before do
    content_type 'image/png'
  end

  get '/:dice' do
    param :dice, Array, required: true, delimiter: '-', format: /^[1-6][F]$/

    ImageService.generate_image params[:dice], expand: true
  end

end
