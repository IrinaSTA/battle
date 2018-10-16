require 'sinatra/base'

class Battle < Sinatra::Base

  get '/' do
    "This is a game of BATTLE!"
  end

  get '/form' do
    erb(:form)
  end

  post '/names' do
    @name1 = params[:name1]
    @name2 = params[:name2]
    erb(:names)
  end
end
