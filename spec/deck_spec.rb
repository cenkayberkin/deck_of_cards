require "minitest/spec"
require "minitest/autorun"

require "deck"

# there are 13 cards for suit
# there are 4 types of suits to in total there are 52 cards.
describe Deck, "Testing basic deck of cards properties " do
  new_Deck = Deck.new

  it "has correct number of cards" do
    new_Deck = Deck.new
    new_Deck.cards.size.to_s.must_match("52")
  end

  it "must contain card 3C" do
    assert true == new_Deck.has_card?("C3")
  end

  it "must contain card 11C" do
    assert true == new_Deck.has_card?("C11")
  end

  it "must not contain card 14H" do
    assert false == new_Deck.has_card?("14H")
  end

  it "must not contain card 4Z" do
    assert false == new_Deck.has_card?("4Z")
  end
end