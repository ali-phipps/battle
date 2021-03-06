require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    "Testing infrastructure working!"
#     # erb(:index)

  end

  get '/battle/' do
   erb(:index)
  end

  post '/names' do
    session['Player_1'] = params[:Player_1]
    session['Player_2'] = params[:Player_2]
    redirect '/play'
  end

  get '/play' do
    p session
    @Player_1 = session['Player_1']
    @Player_2 = session['Player_2']

    erb(:play)
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
