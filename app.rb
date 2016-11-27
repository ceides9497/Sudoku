require 'sinatra'
require_relative 'lib/Sudoku.rb'
#before do
#  @dificultad = params[:opcion]
  #request.path_info = '/gettable'
#end

#before do
#  $dificultad=" "
#end

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
#///////////////////////////////////////////////////////////////////
post '/gettable' do
  $dificultad=params[:opcion]

	sudoku = Sudoku.new
  @solved=true

	@sudokutable = sudoku.Change_difficulty($dificultad)
  @booleantable = sudoku.initBooleansTable()
@currenttable = sudoku.Change_difficulty($dificultad)

	erb :game
end
#/////////////////////////////////////////////////////////
post '/generar' do
  sudo = Sudoku.new
  valores = params[:cell]

    #@sudokutable = sudo.initTableEasy()
@sudokutable = sudo.Change_difficulty($dificultad)
  @currenttable = sudo.array_from_1d_to_2d(valores)
  @booleantable = sudo.check_table(valores)
  @solutionTable=sudo.getSolutionTable()
  @solved = for_message(@currenttable)
  if params[:pressed] == "Check"
    erb :game
  elsif params[:pressed] == "Finish"
    if sudo.is_table_correct_completed?(@currenttable,@solutionTable)
      erb :finish
    else
      @solved = true
      @finishPlease=true
      erb :game
    end
  end
end

get '/yield' do
  sudoku = Sudoku.new

  @sudokutable = sudoku.Change_difficulty($dificultad)

 #@sudokutable = sudoku.initTable()
	#@sudokutable = sudoku.initTableEasy()
  @solvedtable = sudoku.getSolutionTable()
  erb :yield
end
