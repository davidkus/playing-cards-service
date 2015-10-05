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
        get_cards
        expect(last_response.status).to eq 400
      end
    end

    context 'valid parameter provided' do
      let(:card_param) { '10H' }

      it 'returns a 200 response code' do
        get_cards
        expect(last_response.status).to eq 200
      end

      it 'returns a png image' do
        get_cards
        expect(last_response.content_type).to eq('image/png')
      end
    end

  end
end
