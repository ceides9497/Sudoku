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

$gametable #global variable - save level table
$gameSolutionTable #global variable - save solution level table

get '/' do
  erb :index
end

post '/gettable' do
	sudoku = Sudoku.new
  @solved=true
  @booleantable = sudoku.initBooleansTable()
  if params[:option] == "Easy"
    $gametable = sudoku.initTableEasy()
    @sudokutable = $gametable
    @currenttable = sudoku.initTableEasy()
    $gameSolutionTable = sudoku.getSolutionTableEasy()
  elsif params[:option] == "Normal"
    $gametable = sudoku.initTable()
    @sudokutable = $gametable
    @currenttable = sudoku.initTable()
    $gameSolutionTable = sudoku.getSolutionTable()
  elsif params[:option] == "Hard"
    $gametable = sudoku.initTableHard()
    @sudokutable = $gametable
    @currenttable = sudoku.initTableHard()
    $gameSolutionTable = sudoku.getSolutionTableHard()
  end

	erb :game
end

post '/generar' do
  sudo = Sudoku.new
  valores = params[:cell]
  @sudokutable = $gametable
  @currenttable = sudo.array_from_1d_to_2d(valores)
  @booleantable = sudo.check_table(valores)
  @solutionTable= $gameSolutionTable
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
  @sudokutable = $gametable
  @solvedtable = $gameSolutionTable
  erb :yield
end
