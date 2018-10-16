require 'sinatra/base'
require 'pry'

class Battle < Sinatra::Base

  get '/' do
    "This is a game of BATTLE!"
  end

  get '/form' do
    erb(:form)
  end

  enable :sessions

  post '/names' do
    session['name1'] = params[:name1]
    session['name2'] = params[:name2]
    redirect to('/play')
  end

  get '/play' do
    @name1 = session['name1']
    @name2 = session['name2']
    erb(:play)
  end

end
