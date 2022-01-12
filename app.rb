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
    @playerone = $playerone
    @playertwo = $playertwo
    erb :play
  end

  post '/names' do
    $playerone = Player.new(params[:player_one_name])
    $playertwo = Player.new(params[:player_two_name]) 
    redirect '/play'
  end

  get '/attack' do
    @playerone = $playerone
    @playertwo = $playertwo
    Game.new.attack(@playertwo)
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end