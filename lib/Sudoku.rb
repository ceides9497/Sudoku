class Sudoku

  def compare(number)

    if number.is_a? String
      return "no valid String"
    end
    if number>0 and number<10
      return "valid"
    else
      return "no valid"
    end
  end

  def initTable()
  	sudokuTable = [[1, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 4, 0, 0, 1, 0, 9, 0], [0, 6, 0, 0, 8, 0, 0, 0, 0], [0, 0, 3, 0, 7, 0, 8, 0, 0], [0, 0, 0, 0, 0, 5, 1, 0, 0], [7, 0, 0, 1, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 3, 0, 0, 8], [0, 0, 5, 0, 0, 4, 9, 7, 0], [4, 0, 6, 8, 5, 0, 0, 1, 0]]
  	return sudokuTable
  end

end
