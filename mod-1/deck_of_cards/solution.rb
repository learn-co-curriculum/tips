require 'pry'

class Deck

    attr_accessor :cards

    def initialize
        @cards = []
        ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
        suits = ["Hearts", "Clubs", "Spades", "Diamonds"]
        ranks.each do |rank|
            suits.each do |suit|
                @cards << Card.new(suit, rank)
            end
        end
    end

    def choose_card
        @cards.delete(@cards.sample)
    end

end

class Card

    attr_reader :suit, :rank

    def initialize(suit, rank)
        @suit, @rank = suit, rank
    end
end

