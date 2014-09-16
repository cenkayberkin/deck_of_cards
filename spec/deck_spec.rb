require "minitest/spec"
require "minitest/autorun"

require "deck"

describe Deck, "Testing basic deck of cards properties " do
  new_Deck = Deck.new

  it "has correct number of cards" do
     new_Deck.size.to_s.must_match "52"
  end
end