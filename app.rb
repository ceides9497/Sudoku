require 'sinatra'
require_relative 'lib/Sudoku.rb'

get '/' do
  erb :index
end

post '/gettable' do
	sudoku = Sudoku.new
	@sudokutable = sudoku.initTable()
  sudoku.board = sudoku.initTable()
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
  erb :game
end
