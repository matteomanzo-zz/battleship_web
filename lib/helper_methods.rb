  module Helper_methods

    def not_two_players?
      (@player1.name == "") || (@player2.name == "") || (@player1.name.nil?) || (@player2.name.nil?) == true
    end
  end
