module FileNameService

  def self.file_name(card)

    suit = card.chars.last
    rank = card[0...-1]

    case suit
    when "S"
      folder = "spades"
    when "H"
      folder = "hearts"
    when "D"
      folder = "diamonds"
    when "C"
      folder = "clubs"
    when "M"
      folder = "misc"
    when "F"
      folder = "dice"
    else
      folder = "misc"
    end

    "./vendor/images/#{folder}/#{rank}.png"
  end

end
