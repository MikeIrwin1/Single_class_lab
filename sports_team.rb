class Team

  attr_reader :name, :players
  attr_accessor :coach, :points, :status

  def initialize(name, players, coach, points, status)
    @name = name
    @players = players
    @coach = coach
    @points = points
    @status = status
  end

  def add_player(player)
    @players << player
  end

  def check_player_name(name)
    for player in @players
      if player == name
        return true
      end
      return false
    end
  end

  def check_win
    if @status == "win"
      @points += 100
    end
  end

# def get_name
#   return @name
# end
#
# def get_players
#   return @players
# end
#
# def get_coach
#   return @coach
# end
#
# def set_coach_name(coach_name)
#   @coach = coach_name
# end



end
