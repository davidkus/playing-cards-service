require 'rmagick'

module ImageService

  def self.generate_image(cards, expand: false, format: 'PNG')

    filesToLoad = cards.map { |card| FileNameService.file_name card }

    imageList = Magick::ImageList.new *filesToLoad

    if !expand
      imageList.each_with_index do |image, index|
        unless index == imageList.size - 1
          image.crop! Magick::WestGravity, image.columns / 3, image.rows
        end
      end
    end

    image = imageList.append false
    image.format = format

    image.to_blob
  end

end
