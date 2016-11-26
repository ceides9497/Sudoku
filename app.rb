require 'sinatra'
require_relative 'lib/Sudoku.rb'

def for_message(table1)
  sudoku = Sudoku.new
  for numfil in 0..8
    for numcol in 0..8
      if table1[numfil][numcol] != 0
        if not sudoku.is_number_factible?(table1[numfil][numcol],numfil,numcol,table1)
          return false
        end
      end
    end
  end
  return true
end

get '/' do
  erb :index
end

post '/gettable' do
	sudoku = Sudoku.new
	@sudokutable = sudoku.initTable()
  @booleantable = sudoku.initBooleansTable()
  @currenttable = sudoku.initTable()
	erb :game
end

post '/generar' do
  valores = params[:cell]
  sudo = Sudoku.new
  @sudokutable = sudo.initTable()
  @currenttable = sudo.array_from_1d_to_2d(valores)
  @booleantable = sudo.check_table(valores)
  @solutionTable=sudo.getSolutionTable()
#  @solved = sudo.is_table_correct_completed?(@currenttable,@solutionTable)
  @solved = for_message(@currenttable)
  erb :game
end

get '/yield' do
  sudoku = Sudoku.new
  @sudokutable = sudoku.initTable()  
  @solvedtable = sudoku.getSolutionTable()
  erb :yield
end