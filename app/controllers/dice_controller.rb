class DiceController < ApplicationController
  helpers Sinatra::Param

  get '/:dice' do
    param :dice, Array, required: true, delimiter: '-', format: /^[1-6][F]$/

    content_type 'image/png'
    ImageService.generate_image params[:dice], expand: true
  end

end
