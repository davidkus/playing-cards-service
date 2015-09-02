require 'rmagick'

module ImageService

  def self.generate_image(text, format: 'PNG')

    width = 54 * text.length
    image = Magick::Image.new(width, 62) { self.background_color = "white" }
    image.format = format

    txt = Magick::Draw.new

    txt.text(1,1, text)
    txt.font = './vendor/fonts/playing-cards-webfont.ttf'
    txt.encoding = 'Unicode'
    txt.gravity = Magick::NorthGravity
    txt.pointsize = 50
    txt.font_weight = Magick::BoldWeight

    txt.draw(image)

    image.to_blob
  end

end
