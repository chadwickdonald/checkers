require 'board'

class Checkers

  def get_positions
    positions =  [ [1, 0, 1, 0, 1, 0, 1, 0], 
  	             [0, 1, 0, 1, 0, 1, 0, 1], 
  	             [0, 0, 0, 0, 0, 0, 0, 0],
  	             [0, 0, 0, 0, 0, 0, 0, 0],
  	             [0, 0, 0, 0, 0, 0, 0, 0],
  	             [0, 0, 0, 0, 0, 0, 0, 0],
  	             [2, 0, 2, 0, 2, 0, 2, 0],
  	             [0, 2, 0, 2, 0, 2, 0, 2]
  	           ]
  	return positions
  end

 

  @result = 'no result'
  
  def position_legality(player, positions, endX, endY, startX, startY, move)
    if ( (((endY==(startY+1)) || (endY==(startY-1))) && (endX==(startX+move))) && (endX.between?(0,8) && endY.between?(0,8)) ) 
      if (positions[endX][endY]==0 && (player==1 || player==2)) 
        positions[startX][startY]=0
        positions[endX][endY]=player
        @result = "move was legal"
      else
        @result = "position was occupied"
      end
    else      
      @result =   "move was illegal"
      return @result
    end
  end
end
