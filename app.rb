require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'lib/player'
require_relative 'lib/game'

class Battle < Sinatra::Base

  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Hello Players, Please enter your names'
    erb :index

  end

  get '/play' do
    @playerone = $game.playerone
    @playertwo = $game.playertwo
    @current_player = $game.current_player
    erb :play
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player_one_name]), Player.new(params[:player_two_name]))
    redirect '/play'
  end

  get '/attack' do
    @playerone = $game.playerone
    @playertwo = $game.playertwo
    @current_player = $game.current_player
    @opponent = $game.opponent
    $game.attack(@opponent)
    $game.change_turn
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end