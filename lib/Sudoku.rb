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
  	table = [[[0,0,0],[0,2,9],[0,0,0]],[[0,0,0],[9,0,8],[0,4,7]],[[7,0,4],[3,0,5],[0,0,0]],[[0,0,8],[0,0,0],[0,0,4]],[[0,1,0],[0,7,0],[0,6,0]],[[0,0,9],[0,2,7],[5,0,6]],[[0,0,5],[0,0,0],[8,0,2]],[[0,0,0],[6,0,0],[0,2,0]],[[0,0,0],[0,0,8],[0,0,0]]]
  	return table
  end

end
