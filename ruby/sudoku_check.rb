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
