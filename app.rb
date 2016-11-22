require 'sinatra'
require_relative 'lib/Sudoku.rb'

get '/' do
  erb :index
end

post '/gettable' do
	sudoku = Sudoku.new
	@sudokutable = sudoku.initTable()
  sudoku.board = sudoku.initTable()
	erb :game
end

post '/generar' do
  valores = params[:cell]
  sudo = Sudoku.new
  resps = sudo.return_resps_to_vals(valores)

if resps[2]
  "<center><strong>respuesta: </strong>1</center>"
else
  "<center><strong>respuesta: </strong>0</center>"
end

end
