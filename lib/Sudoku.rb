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
  	table = 1
  	return table
  end

end
