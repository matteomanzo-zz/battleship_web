require 'sinatra/base'

class BattleShips < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views") }

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

