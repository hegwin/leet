# https://leetcode.com/problems/battleships-in-a-board/description/
#
# @param {Character[][]} board
# @return {Integer}
def count_battleships(board)
  count = 0
  width = board.first.size
  height = board.size
  cells = []
    
  board.each_with_index do |line, x|
    line.each_with_index do |cell, y|
      index = x * width + y

      next unless cells[index].nil?

      flag = false
      if cell == 'X'

          ((y+1)..(line.size-1)).each do |b|
            break if board[x][b] == '.'
            cells[width * x + b] = false
          end
          ((x+1)..(board.size-1)).each do |a|
            break if board[a][y] == '.'
            cells[width * a + y] = false
          end
          
          flag = true
      end

      cells[index] = flag
    end
  end
      
  cells.count { |e| e }
end
