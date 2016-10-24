require 'sinatra'
require_relative 'lib/Sudoku.rb'

get '/' do
  erb :SudokuIndex
end

post '/generar' do
  valor = params[:num].to_i
  sudo = Sudoku.new
  resp= sudo.compare(valor)
  printf " aqui #{resp}"
end
