require 'spec_helper'

RSpec.describe 'DiceController' do

  def app
    DiceController
  end

  describe 'GET dice' do

    subject(:get_dice) { get "/#{dice_param}" }

    context 'invalid parameter provided' do
      let(:dice_param) { '5Y' }

      it 'throws an invalid parameter error' do
        expect { get_dice }.to raise_error Sinatra::Param::InvalidParameterError
      end
    end

    context 'valid parameter provided' do
      let(:dice_param) { '5F' }

      it 'returns a png image' do
        get_dice
        expect(last_response.content_type).to eq('image/png')
      end
    end

  end
end
