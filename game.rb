require 'checkers'

class Game
    
  color = ARGV[0]
  startX = ARGV[1].to_i
  startY = ARGV[2].to_i
  endX = ARGV[3].to_i
  endY = ARGV[4].to_i
    
  
  if (color=='black')
    player = 1
    move = 1
  elsif (color=='red')
    player = 2
    move = -1
  else
    player = 0
  end
  
  checkers = Checkers.new
  positions = checkers.get_positions
  legality = checkers.position_legality(player, positions, endX, endY, startX, startY, move)
  puts legality

end


