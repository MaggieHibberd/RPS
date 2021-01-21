class Game
    attr_reader :playerone, :playertwo

    def initialize(nameone, nametwo)
      @playerone = Player.new(nameone)
      @playertwo = Player.new(nametwo)
    end 

    def nameone_incorrect?
      @playerone.name.size <= 0 
    end

    def nametwo_incorrect?
      @playertwo.name.size <= 0 
    end

    def one_incorrect?
      @playerone.choice.size == 0 
    end

    def two_incorrect?
      @playertwo.choice.size == 0 
    end

    def draw?
     @playerone.choice.downcase == @playertwo.choice.downcase  
    end

    def playerone_won?
    (@playerone.choice.downcase == "rock" && @playertwo.choice.downcase == "scissors") ||
    (@playerone.choice.downcase == "scissors" && @playertwo.choice.downcase == "paper") ||
    (@playerone.choice.downcase == "paper" && @playertwo.choice.downcase == "rock")
    end 

    def playertwo_won?
    !playerone_won? 
    end 
end
