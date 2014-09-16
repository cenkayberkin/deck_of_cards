class Deck
  attr_accessor :cards

  def initialize
    @cards = []
    create_cards
  end

  def create_cards
    (1..52).each do |c|
      @cards << c
    end
  end

  def size
    @cards.size
  end

end
