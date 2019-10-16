require 'sinatra'

class Battle < Sinatra::Base

  enable :sessions

  get '/battle' do
    p "working"
  end

  get '/infra' do
   'Testing infrastructure working!'
  end

  get '/' do
    erb :index
  end

  post '/player-names' do
    session[:player_1] = params[:player_1]
    session[:player_2] = params[:player_2]
    redirect '/play'
  end

  get '/play' do
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    erb :play
    erb :health
  end

end



# run! if app_file == $0
