require 'sinatra/base'
require_relative 'helper_methods'
require_relative '../game_setup'


class BattleShips < Sinatra::Base
  
  set :views, Proc.new { File.join(root, "../views") }

  include Helper_methods

  GAME = Game.new
 

  get '/' do
    erb :index
  end

  get '/NewGame' do
    erb :newgame
  end

  post '/NewGame' do
    @player = Player.new
    @player.name = params[:name]
    erb :playgame
  end

  get '/PlayGame' do
    erb :playgame
  end
  
  def go_back
    erb :NewGame
  end

   # start the server if ruby file executed directly
  run! if app_file == $0
end

