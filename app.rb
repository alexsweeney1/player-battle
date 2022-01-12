require 'sinatra/base'
require 'sinatra/reloader'

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
    @playerone = session[:playerone]
    @playertwo = session[:playertwo]
    erb :play
  end
  
  post '/names' do
    session[:playerone] = params[:playerone]
    session[:playertwo] = params[:playertwo] 
    redirect '/play'
  end

  get '/attack' do
    @playerone = session[:playerone]
    @playertwo = session[:playertwo]
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end