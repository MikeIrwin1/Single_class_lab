class Team

attr_reader :name, :players
attr_accessor :coach

def initialize(name, players, coach)
  @name = name
  @players = players
  @coach = coach
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
