require 'sinatra/base'
require_relative 'helper_methods'
require_relative '../game_setup'


class BattleShips < Sinatra::Base
  
  set :views, Proc.new { File.join(root, "../views") }

  include Helper_methods

  game = Game.new
 

  get '/' do
    erb :index
  end

  get '/NewGame' do
    erb :newgame
  end

  post '/NewGame' do
    @player = Player.new
    session[:me] = @player
    @player.name = params[:name]
    puts @player.inspect
    puts session.object_id
    puts game
    game.add_player(session[:me])
    puts game.inspect
    erb :playgame
  end

  get '/Board' do
    puts game.inspect
    erb :board
  end


  
  def go_back
    erb :NewGame
  end

   # start the server if ruby file executed directly
  run! if app_file == $0
end

