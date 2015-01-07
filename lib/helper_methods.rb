  module Helper_methods

    def not_two_players?
      (@player1 == "") || (@player2 == "") || (@player1.nil?) || (@player2.nil?) == true
    end

    def two_player_error
       if not_two_players?
      puts "Enter a player"
       else 
      nil
    end
  end

  end
