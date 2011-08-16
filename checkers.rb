require 'board'

class Checkers


  positions =  [ [1, 0, 1, 0, 1, 0, 1, 0], 
  	             [0, 1, 0, 1, 0, 1, 0, 1], 
  	             [0, 0, 0, 0, 0, 0, 0, 0],
  	             [0, 0, 0, 0, 0, 0, 0, 0],
  	             [0, 0, 0, 0, 0, 0, 0, 0],
  	             [0, 0, 0, 0, 0, 0, 0, 0],
  	             [2, 0, 2, 0, 2, 0, 2, 0],
  	             [0, 2, 0, 2, 0, 2, 0, 2]
  	           ]

 
 
  
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
  
#  puts "board at beginning"
#  puts positions[startX][startY]
#  puts positions[endX][endY]

  
  
    if ( (((endY==(startY+1)) || (endY==(startY-1))) && (endX==(startX+move))) && (endX.between?(0,8) && endY.between?(0,8)) ) 
      if (positions[endX][endY]==0 && (player==1 || player==2)) 
        positions[startX][startY]=0
        positions[endX][endY]=player
        puts "move was legal"
      else
        puts "position was occupied"
      end
    else 
      puts "move was illegal"
    end


#  puts "board at end"
#  puts positions[startX][startY]
#  puts positions[endX][endY]



end
