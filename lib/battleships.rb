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
    @player1 = Player.new
    session[:me] = @player1
    @player1.name = params[:name]
    puts @player1.inspect
    puts session
    puts game
    game.add_player(session[:me])
    puts game.inspect

    erb :playgame
  end


  get '/Board' do
    if @board1.nil?
      @board1 = Board.new(Cell)
      session[:board] = @board1
      game.player1.board = @board1
      puts game.player1.has_board?
      puts @board1.object_id
      erb :board
    else
      erb :board
    end
  end

  
  def go_back
    erb :NewGame
  end

   # start the server if ruby file executed directly
  run! if app_file == $0
end

