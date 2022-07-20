# frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'FileNameService' do
  describe 'file_name' do
    subject { FileNameService.file_name card }

    context 'when resolving spades' do
      let(:card) { '10S' }

      it { is_expected.to eq './vendor/images/spades/10.png' }
    end

    context 'when resolving diamonds' do
      let(:card) { '10D' }

      it { is_expected.to eq './vendor/images/diamonds/10.png' }
    end

    context 'when resolving hearts' do
      let(:card) { '10H' }

      it { is_expected.to eq './vendor/images/hearts/10.png' }
    end

    context 'when resolving clubs' do
      let(:card) { '10C' }

      it { is_expected.to eq './vendor/images/clubs/10.png' }
    end

    context 'when resolving dice' do
      let(:card) { '5F' }

      it { is_expected.to eq './vendor/images/dice/5.png' }
    end

    context 'when resolving misc' do
      let(:card) { '10M' }

      it { is_expected.to eq './vendor/images/misc/10.png' }
    end

    context 'when resolving an unknown' do
      let(:card) { '10L' }

      it { is_expected.to eq './vendor/images/misc/10.png' }
    end
  end
end
