require 'sinatra/base'

class BattleShips < Sinatra::Base
  get '/' do
    'Hello BattleShips!'
     "New Game"
     erb :index
  end

  get '/NewGame' do
        
   end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
