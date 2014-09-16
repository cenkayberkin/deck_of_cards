class Deck
  attr_accessor :cards

  def initialize
    @cards = []
    create_cards
  end

  def create_cards
    ['C','H','D','S'].each do |s|
      (1..13).each do |c|
        @cards << s + c.to_s
      end
    end
  end

  def size
    @cards.size
  end
end

class Card
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end