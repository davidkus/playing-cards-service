# frozen_string_literal: true

# Provides methods for retrieving the file name for a card.
module FileNameService
  def self.file_name(card) # rubocop:disable Metrics/MethodLength
    suit = card.chars.last
    rank = card[0...-1]

    folder = case suit
             when 'S'
               'spades'
             when 'H'
               'hearts'
             when 'D'
               'diamonds'
             when 'C'
               'clubs'
             when 'M'
               'misc'
             when 'F'
               'dice'
             else # rubocop:disable Lint/DuplicateBranch
               'misc'
             end

    "./vendor/images/#{folder}/#{rank}.png"
  end
end
