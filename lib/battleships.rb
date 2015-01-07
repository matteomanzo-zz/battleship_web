require 'sinatra/base'
require_relative 'helper_methods'


class BattleShips < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views") }

  include Helper_methods

  get '/' do
    "Hello BattleShips!"
    erb :index
  end

  get '/NewGame' do  
    @player1 = params[:name1]
    @player2 = params[:name2]
    erb :newgame
  end

  

   # start the server if ruby file executed directly
  run! if app_file == $0
end

