class Sudoku

	attr_accessor :board

	def return_resps_to_vals(valores)
		resp = []
		for num in 0..80
			resp[num]=is_number_between_1_to_9?(valores[num].to_i)
		end
		return resp
	end

  def is_number_between_1_to_9?(number)

    if number.is_a? String
      return false
    end
    if number>0 and number<10
      return true
    else
      return false
    end
  end

  def initTable()
  	sudokuTable = [[1, 0, 0, 0, 0, 0, 0, 0, 0],
                   [0, 0, 4, 0, 0, 1, 0, 9, 0],
                   [0, 6, 0, 0, 8, 0, 0, 0, 0],
                   [0, 0, 3, 0, 7, 0, 8, 0, 0],
                   [0, 0, 0, 0, 0, 5, 1, 0, 0],
                   [7, 0, 0, 1, 0, 0, 0, 0, 0],
                   [0, 0, 0, 0, 0, 3, 0, 0, 8],
                   [0, 0, 5, 0, 0, 4, 9, 7, 0],
                   [4, 0, 6, 8, 5, 0, 0, 1, 0]]
  	return sudokuTable
  end

  def number_is_not_repeated_in_row?(number,row)
    board[row].each do |item|
      if number==item
        return false
      end
    end
    return true
  end

  def number_is_not_repeated_in_column?(number,col)
    column = board.map {|row| row[2]}
    column.each do |item|
      if number==item
        return false
      end
    end
    return true
  end


end
