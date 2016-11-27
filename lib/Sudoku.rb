class Sudoku

	def initTable()
  	sudokuTable = [[0, 0, 0, 0, 4, 0, 6, 0, 7],
									 [0, 0, 0, 6, 0, 0, 0, 2, 5],
									 [3, 0, 5, 0, 0, 7, 0, 0, 4],
									 [0, 0, 6, 0, 5, 0, 0, 0, 0],
									 [4, 0, 0, 7, 8, 0, 2, 0, 0],
									 [7, 2, 0, 0, 6, 0, 0, 0, 0],
									 [0, 0, 3, 0, 0, 0, 0, 5, 0],
									 [2, 8, 0, 0, 0, 0, 0, 6, 0],
									 [0, 9, 0, 0, 0, 0, 7, 0, 8]]
  	return sudokuTable
  end

	def getSolutionTable()
		solutionTable = [[9, 1, 2, 3, 4, 5, 6, 8, 7],
										 [8, 4, 7, 6, 1, 9, 3, 2, 5],
										 [3, 6, 5, 8, 2, 7, 1, 9, 4],
										 [1, 3, 6, 4, 5, 2, 8, 7, 9],
										 [4, 5, 9, 7, 8, 1, 2, 3, 6],
										 [7, 2, 8, 9, 6, 3, 5, 4, 1],
									 	 [6, 7, 3, 1, 9, 8, 4, 5, 2],
										 [2, 8, 1, 5, 7, 4, 9, 6, 3],
										 [5, 9, 4, 2, 3, 6, 7, 1, 8]]
		return solutionTable
	end

	def initTableEasy()
  	sudokuTable = [[0, 0, 7, 0, 4, 0, 6, 0, 8],
									 [0, 6, 0, 0, 0, 3, 0, 5, 4],
									 [2, 0, 1, 0, 8, 0, 7, 0, 9],
									 [8, 0, 0, 0, 0, 1, 5, 0, 7],
									 [3, 0, 5, 0, 0, 7, 0, 8, 6],
									 [6, 7, 0, 8, 0, 5, 0, 0, 3],
									 [7, 0, 0, 3, 0, 4, 0, 9, 1],
									 [4, 0, 0, 0, 1, 9, 0, 0, 5],
									 [1, 9, 0, 0, 0, 8, 4, 6, 0]]
  	return sudokuTable
  end

	def getSolutionTableEasy()
		solutionTable = [[5, 3, 7, 9, 4, 2, 6, 1, 8],
										 [9, 6, 8, 1, 7, 3, 2, 5, 4],
										 [2, 4, 1, 5, 8, 6, 7, 3, 9],
										 [8, 2, 9, 6, 3, 1, 5, 4, 7],
										 [3, 1, 5, 4, 2, 7, 9, 8, 6],
										 [6, 7, 4, 8, 9, 5, 1, 2, 3],
										 [7, 5, 2, 3, 6, 4, 8, 9, 1],
										 [4, 8, 6, 2, 1, 9, 3, 7, 5],
										 [1, 9, 3, 7, 5, 8, 4, 6, 2]]
		return solutionTable
	end

	def initTableHard()
  	sudokuTable = [[0, 0, 5, 0, 0, 0, 0, 7, 0],
									 [0, 0, 0, 7, 0, 8, 0, 0, 0],
									 [0, 0, 0, 0, 0, 0, 0, 0, 1],
									 [3, 9, 0, 0, 0, 0, 0, 0, 5],
									 [0, 0, 0, 0, 0, 0, 0, 0, 0],
									 [0, 0, 0, 0, 0, 0, 4, 0, 0],
									 [0, 0, 9, 0, 0, 0, 0, 0, 0],
									 [5, 7, 0, 9, 0, 0, 0, 0, 0],
									 [1, 3, 0, 0, 0, 0, 0, 9, 7]]
  	return sudokuTable
  end

	def getSolutionTableHard()
		solutionTable = [[6, 8, 5, 4, 2, 1, 3, 7, 9],
										 [4, 1, 3, 7, 9, 8, 5, 6, 2],
										 [9, 2, 7, 3, 5, 6, 8, 4, 1],
										 [3, 9, 8, 2, 6, 4, 7, 1, 5],
										 [2, 5, 4, 1, 8, 7, 9, 3, 6],
										 [7, 6, 1, 5, 3, 9, 4, 2, 8],
										 [8, 4, 9, 6, 7, 2, 1, 5, 3],
										 [5, 7, 6, 9, 1, 3, 2, 8, 4],
										 [1, 3, 2, 8, 4, 5, 6, 9, 7]]
		return solutionTable
	end

	def return_resps_to_vals(values)
		resp = []
		for num in 0..80
			resp[num]=is_number_between_1_to_9?(values[num].to_i)
		end
		return resp
	end

  def is_number_between_1_to_9?(digit)

    if digit.is_a? String
      return false
    end
    if digit>0 and digit<10
      return true
    else
      return false
    end
  end

  def initBooleansTable()
    table = Array.new(9, true) { Array.new(9, true) }
    return table
  end

  def number_is_not_repeated_in_row?(digit,row, values)
    cont = 0
    for num in 0..8
      if values[row][num] == digit
        cont = cont + 1
      end
    end
    if cont > 1
      return false
    end
    return true
  end

  def number_is_not_repeated_in_column?(digit,col, values)
    cont = 0
    for num in 0..8
      if values[num][col] == digit
        cont = cont + 1
      end
    end
    if cont > 1
      return false
    end
    return true
  end

	def number_is_not_repeated_in_box?(digit,row,col, values)
    cont = 0
		#for region A
		if (0..2) === row and (0..2) === col
				for numfil in 0..2
					for numcol in 0..2
						if values[numfil][numcol] == digit
							cont = cont +1
						end
					end
				end
				if cont > 1
		      return false
		    end
		    return true
		end

		#for region B
		if (0..2) === row and (3..5) === col
				for numfil in 0..2
					for numcol in 3..5
						if values[numfil][numcol] == digit
							cont = cont +1
						end
					end
				end
				if cont > 1
					return false
				end
				return true
		end

		#for region C
		if (0..2) === row and (6..8) === col
				for numfil in 0..2
					for numcol in 6..8
						if values[numfil][numcol] == digit
							cont = cont +1
						end
					end
				end
				if cont > 1
					return false
				end
				return true
		end

		#for region D
		if (3..5) === row and (0..2) === col
				for numfil in 3..5
					for numcol in 0..2
						if values[numfil][numcol] == digit
							cont = cont +1
						end
					end
				end
				if cont > 1
					return false
				end
				return true
		end

		#for region E
		if (3..5) === row and (3..5) === col
				for numfil in 3..5
					for numcol in 3..5
						if values[numfil][numcol] == digit
							cont = cont +1
						end
					end
				end
				if cont > 1
					return false
				end
				return true
		end

		#for region F
		if (3..5) === row and (6..8) === col
				for numfil in 3..5
					for numcol in 6..8
						if values[numfil][numcol] == digit
							cont = cont +1
						end
					end
				end
				if cont > 1
					return false
				end
				return true
		end

		#for region G
		if (6..8) === row and (0..2) === col
				for numfil in 6..8
					for numcol in 0..2
						if values[numfil][numcol] == digit
							cont = cont +1
						end
					end
				end
				if cont > 1
					return false
				end
				return true
		end

		#for region H
		if (6..8) === row and (3..5) === col
				for numfil in 6..8
					for numcol in 3..5
						if values[numfil][numcol] == digit
							cont = cont +1
						end
					end
				end
				if cont > 1
					return false
				end
				return true
		end

		#for region I
		if (6..8) === row and (6..8) === col
				for numfil in 6..8
					for numcol in 6..8
						if values[numfil][numcol] == digit
							cont = cont +1
						end
					end
				end
				if cont > 1
					return false
				end
				return true
		end


  end

  def array_from_1d_to_2d(values)
    resp = Array.new(9) { Array.new(9) }
    cont = 0
    for num in 0..8
      for num2 in 0..8
        resp[num][num2] = values[cont].to_i
        cont = cont +1
      end
    end
    return resp
  end

  def check_table(values)
    aux = array_from_1d_to_2d(values)
    resp = Array.new(9, true) { Array.new(9, true) }
    for row in 0..8
      for column in 0..8
        resp[row][column] = is_number_factible?(aux[row][column], row, column, aux)
      end
    end
    return resp
  end

  def is_number_factible?(digit, row, column, values)
    if not is_number_between_1_to_9?(digit)
      return false
    end
		if not number_is_not_repeated_in_box?(digit,row,column,values)
			return false
		end
    if not number_is_not_repeated_in_row?(digit, row, values)
      return false
    end
    if not number_is_not_repeated_in_column?(digit, column, values)
      return false
    end
    return true
  end

	def is_table_completed?(values, solution)
		for numfil in 0..8
			for numcol in 0..8
				if values[numfil][numcol] != solution[numfil][numcol]
					return false
				end
			end
		end
		return true
	end
end
