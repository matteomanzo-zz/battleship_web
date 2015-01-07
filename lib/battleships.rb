require 'sinatra/base'
require './lib/game.rb'
# require './game_setup'

class BattleShips < Sinatra::Base
  set :views, Proc.new { File.join(root, "../views") }

  GAME = Game.new

  get '/' do
    "Hello BattleShips!"
    erb :index
  end

  get '/NewGame' do
    # @game = game

    @player.name = params[:name]
    
    erb :newgame
  end

  post '/NewGame' do
    player = Player.new
    GAME.add_player(@player)
    # create a player and name it 
    redirect '/RegisterPlayerTwo'
  end

  get '/RegisterPlayerTwo' do
    erb :register_player_two
  end



  
  # start the server if ruby file executed directly
  run! if app_file == $0
end
