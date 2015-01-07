require 'sinatra/base'
require_relative 'helper_methods'
require_relative '../game_setup'


class BattleShips < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views") }

  include Helper_methods

  get '/' do
    "Hello BattleShips!"
    erb :index
  end

  get '/NewGame' do
    @game = Game.new  
    @player1 = Player.new
    @player2 = Player.new
    @player1.name = params[:name1]
    @player2.name = params[:name2]
    erb :newgame
  end

  get '/PlayGame' do
    @ship1 = params[:ship1]
    erb :playgame
  end

  

   # start the server if ruby file executed directly
  run! if app_file == $0
end

