# https://leetcode.com/problems/battleships-in-a-board/description/
#
# @param {Character[][]} board
# @return {Integer}
def count_battleships(board)
  count = 0
  counted_cells = []
    
  board.each_with_index do |line, x|
    line.each_with_index do |cell, y|
      if cell == 'X'
        if counted_cells.include?([x, y])
          next
        else
          ((y+1)..(line.size-1)).each do |b|
            break if board[x][b] == '.'
            counted_cells << [x, b]
          end
          ((x+1)..(board.size-1)).each do |a|
            break if board[a][y] == '.'
            counted_cells << [a, y]
          end
          
          count += 1
        end
      end
    end
  end
      
  count
end
