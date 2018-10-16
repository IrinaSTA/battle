require 'sinatra/base'

class Battle < Sinatra::Base

  get '/' do
    "This is a game of BATTLE!"
  end

  # run! if app_file == $0
end
