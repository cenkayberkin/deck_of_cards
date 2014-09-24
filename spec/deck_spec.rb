require 'minitest/spec'
require 'minitest/autorun'

require 'deck'

describe Deck, 'Testing basic deck of cards properties ' do
  deck = Deck.new

  it 'has correct number of cards' do
    deck = Deck.new
    deck.cards.size.to_s.must_match('52')
  end

  it 'must contain card C3' do
    assert true == deck.card?('C3')
  end

  it 'must contain card C11' do
    assert true == deck.card?('C11')
  end

  it 'must not contain card H14' do
    assert false == deck.card?('H14')
  end

  it 'must not contain card Z4' do
    assert false == deck.card?('Z4')
  end
end
