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
    NewGame = Game.new  
    @player1 = params[:name1]
    @player2 = params[:name2]
    erb :newgame
  end

  get '/PlayGame' do
    @player1 = Player.new
    @player2 = Player.new
    @ship1 = params[:ship1]
    erb :playgame
  end

  

   # start the server if ruby file executed directly
  run! if app_file == $0
end

