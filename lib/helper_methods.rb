  module Helper_methods

    def not_two_players?
      (@player1 == "") || (@player2 == "") || (@player1.nil?) || (@player2.nil?) == true
    end
  end
