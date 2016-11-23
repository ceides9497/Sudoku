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

  def initBooleansTable()
    table = Array.new(9, true) { Array.new(9, true) }
    return table
  end

  def number_is_not_repeated_in_row?(number,row, values)
    cont = 0
    for num in 0..8
      if values[row][num] == number
        cont = cont + 1
      end
    end
    if cont > 1
      return false
    end
    return true
  end

  def number_is_not_repeated_in_column?(number,col, values)
    cont = 0
    for num in 0..8
      if values[num][col] == number
        cont = cont + 1
      end
    end
    if cont > 1
      return false
    end
    return true
  end

	def number_is_not_repeated_in_box?(number,fil,col, values)
    cont = 0
		#for region A
		if (0..2) === fil and (0..2) === col
				for numfil in 0..2
					for numcol in 0..2
						if values[numfil][numcol] == number
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
		if (0..2) === fil and (3..5) === col
				for numfil in 0..2
					for numcol in 3..5
						if values[numfil][numcol] == number
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
		if (0..2) === fil and (6..8) === col
				for numfil in 0..2
					for numcol in 6..8
						if values[numfil][numcol] == number
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
		if (3..5) === fil and (0..2) === col
				for numfil in 3..5
					for numcol in 0..2
						if values[numfil][numcol] == number
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
		if (3..5) === fil and (3..5) === col
				for numfil in 3..5
					for numcol in 3..5
						if values[numfil][numcol] == number
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
		if (3..5) === fil and (6..8) === col
				for numfil in 3..5
					for numcol in 6..8
						if values[numfil][numcol] == number
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
		if (6..8) === fil and (0..2) === col
				for numfil in 6..8
					for numcol in 0..2
						if values[numfil][numcol] == number
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
		if (6..8) === fil and (3..5) === col
				for numfil in 6..8
					for numcol in 3..5
						if values[numfil][numcol] == number
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
		if (6..8) === fil and (6..8) === col
				for numfil in 6..8
					for numcol in 6..8
						if values[numfil][numcol] == number
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

  def array_from_1d_to_2d(valores)
    resp = Array.new(9) { Array.new(9) }
    cont = 0
    for num in 0..8
      for num2 in 0..8
        resp[num][num2] = valores[cont].to_i
        cont = cont +1
      end
    end
    return resp
  end

  def check_table(valores)
    aux = array_from_1d_to_2d(valores)
    resp = Array.new(9, true) { Array.new(9, true) }
    for x in 0..8
      for y in 0..8
        resp[x][y] = is_number_factible?(aux[x][y], x, y, aux)
      end
    end
    return resp
  end

  def is_number_factible?(number, row, column, values)
    if not is_number_between_1_to_9?(number)
      return false
    end
		if not number_is_not_repeated_in_box?(number,row,column,values)
			return false
		end
    if not number_is_not_repeated_in_row?(number, row, values)
      return false
    end
    if not number_is_not_repeated_in_column?(number, column, values)
      return false
    end
    return true
  end
end
