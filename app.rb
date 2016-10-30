require 'sinatra'
require_relative 'lib/Sudoku.rb'

get '/' do
  erb :index
end

post '/generar' do
  valor = params[:num].to_i
  sudo = Sudoku.new
  resp= sudo.compare(valor)
  "<center><strong>respuesta: </strong>"+resp+"</center>"
end
