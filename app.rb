require 'sinatra/base'
require 'sinatra/param'
require 'rmagick'

class App < Sinatra::Base
  helpers Sinatra::Param

  before do
    content_type 'image/png'
  end

  get '/dice/:dice.png' do
    param :dice, String, required: true, format: /^[1-6]{1,5}$/

    generate_image params[:dice]
  end

  get '/cards/:cards.png' do
    param :cards, String, required: true, format: /^[a-zA-Z0]{1,8}$/

    generate_image params[:cards]
  end

  def generate_image(text, format: 'PNG')

    width = 54 * text.length
    image = Magick::Image.new(width, 62) { self.background_color = "white" }
    image.format = format

    txt = Magick::Draw.new

    txt.text(1,1, text)
    txt.font = './assets/playing-cards-webfont.ttf'
    txt.encoding = 'Unicode'
    txt.gravity = Magick::NorthGravity
    txt.pointsize = 50
    txt.font_weight = Magick::BoldWeight

    txt.draw(image)

    image.to_blob
  end

end
