class Deck

end

class Card

    attr_reader :suit, :rank

    def initialize(suit, rank)
        @suit, @rank = suit, rank
    end
end

