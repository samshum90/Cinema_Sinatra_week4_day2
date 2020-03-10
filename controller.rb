require( 'sinatra' )
require( 'sinatra/contrib/all' )

require_relative('./models/film')
also_reload('./models/*')

get '/' do
  erb(:home)
end

get '/film' do
  @film = Film.all()
  erb(:film)
end
