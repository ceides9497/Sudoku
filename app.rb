require 'sinatra'
require_relative 'lib/Sudoku.rb'

get '/' do
  erb :index
end

post '/gettable' do
	sudoku = Sudoku.new
	@sudokutable = sudoku.initTable()
	erb :game
end

post '/generar' do
  valor = params[:cell].to_i
  sudo = Sudoku.new
  resp= sudo.is_number_between_1_to_9?(valor)
  "<center><strong>respuesta: </strong>"+resp+"</center>"
end
