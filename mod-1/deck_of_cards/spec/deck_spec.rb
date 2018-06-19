# spec/deck_spec.rb

require_relative "../solution.rb"

describe "Deck" do
  let(:test_deck) { Deck.new }

  it "initializes with an array of Card objects" do 
    expect(test_deck.cards.first).to be_a(Card)
  end

  it "initializes with 52 cards" do
    expect(test_deck.cards.length).to eq(52)
  end

  it "#choose_card removes a card from the deck" do
    expect(test_deck.choose_card).to be_a(Card)
  end

  it "deck size decreases by one when a card is chosen" do
    test_deck.choose_card
    expect(test_deck.cards.length).to eq(51)
  end
end

describe "Card" do

    let(:queen_of_hearts) { Card.new("Hearts", "Q") }

    it "Queen of Hearts has a rank of Q" do
        expect(queen_of_hearts.rank).to eq("Q")
    end

    it "Queen of Hearts has a suit of Hearts" do
        expect(queen_of_hearts.suit).to eq("Hearts")
    end
end
