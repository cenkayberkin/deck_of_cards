class Deck
  attr_accessor :cards

  def initialize
    @cards = []
    create_cards
  end

  def create_cards
    ['C','H','D','S'].each do |s|
      (1..13).each do |c|
        temp_card = Card.new(s + c.to_s)
        @cards << temp_card
      end
    end
  end

  def size
    @cards.size
  end

  def list_cards
    @cards.each do |c|
      p c.name
    end
  end
  public
  def has_card?(cardName)
    result = false
    @cards.each do |c|
      if c.name == cardName
        result = true
        break
      end
    end
    result
  end
end

class Card
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

# d = Deck.new
# p d.includes? "C9a"

