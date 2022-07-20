# frozen_string_literal: true

# Provides methods for generating images of cards.
module ImageService
  def self.generate_image(cards, expand: false, format: 'PNG')
    files_to_load = cards.map { |card| FileNameService.file_name card }

    image_list = Magick::ImageList.new(*files_to_load)

    unless expand
      image_list.each_with_index do |image, index|
        image.crop! Magick::WestGravity, image.columns / 3, image.rows unless index == image_list.size - 1
      end
    end

    image = image_list.append false
    image.format = format

    image.to_blob
  end
end
