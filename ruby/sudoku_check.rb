require 'pry'

def done_or_not(board)
  return "Try again!" unless check_rows(board)
  return "Try again!" unless check_columns(board)
  return "Try again!" unless check_sections(board)
  "Finished!"
end

def check_rows(board)
  board.each do |row|
    return "Try again!" unless row.uniq == row
  end
  true
end

def check_columns(board)
  (0...board.length).each do |index|
    column = board.map { |row| row[index] }
    return false unless column.uniq == column
  end
  true
end

def check_sections(board)
  board.each_slice(3).each do |row_block|
    (0...board.length).each_slice(3) do |i|
      section = row_block.map { |row| row[i.first, 3] }.flatten
      return false unless section.uniq == section
    end
  end
  true
end

p check_sections([[5, 3, 4, 6, 7, 8, 9, 1, 0],
                         [6, 7, 2, 1, 9, 5, 3, 4, 8],
                         [1, 9, 8, 3, 4, 2, 5, 6, 7],
                         [8, 5, 9, 7, 6, 1, 4, 2, 3],
                         [4, 2, 6, 8, 5, 3, 7, 9, 1],
                         [7, 1, 3, 9, 2, 4, 8, 5, 6],
                         [9, 6, 1, 5, 3, 7, 2, 8, 4],
                         [2, 8, 7, 4, 1, 9, 6, 3, 5],
                         [3, 4, 5, 2, 8, 6, 1, 7, 9]])
