require 'spec_helper'

RSpec.describe 'ImageService' do

  describe 'generate_image' do

    subject(:generate_image) { ImageService.generate_image cards, expand: expand }

    let(:cards) { ['2H', '5D'] }

    context 'when not expanding' do

      let(:expand) { false }

      it 'does not expand the image' do
        generated_image = Magick::Image.from_blob generate_image
        base_image = Magick::ImageList.new './spec/test_data/2H-5D.png'

        expect(generated_image.first.signature).to eq base_image.first.signature
      end

    end

    context 'when expanding' do

      let(:expand) { true }

      it 'does expand the image' do
        generated_image = Magick::Image.from_blob generate_image
        base_image = Magick::ImageList.new './spec/test_data/2H-5D-expanded.png'

        expect(generated_image.first.signature).to eq base_image.first.signature
      end

    end

  end

end
