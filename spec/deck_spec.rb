require "minitest/spec"
require "minitest/autorun"

require "deck"

# there are 13 cards for suit
# there are 4 types of suits to in total there are 52 cards.
describe Deck, "Testing basic deck of cards properties " do
  new_Deck = Deck.new

  it "has correct number of cards" do
    new_Deck.size.to_s.must_match "52"
  end

  it "must contain" do
    assert_equal true, new_Deck.contains? "3C"
  end

  it "must contain" do
    assert_equal true, new_Deck.contains? "11C"
  end

  it "must not contain" do
    assert_equal false, new_Deck.contains? "14H"
  end

  it "must not contain" do
    assert_equal false, new_Deck.contains? "4Z"
  end
end