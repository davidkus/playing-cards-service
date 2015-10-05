require 'spec_helper'

RSpec.describe 'CardsController' do

  def app
    CardsController
  end

  describe 'GET cards' do

    subject(:get_cards) { get "/#{card_param}" }

    context 'invalid parameter provided' do
      let(:card_param) { '5Y' }

      it 'throws an invalid parameter error' do
        expect { get_cards }.to raise_error Sinatra::Param::InvalidParameterError
      end
    end

    context 'valid parameter provided' do
      let(:card_param) { '10H' }

      it 'returns a png image' do
        get_cards
        expect(last_response.content_type).to eq('image/png')
      end
    end

  end
end
