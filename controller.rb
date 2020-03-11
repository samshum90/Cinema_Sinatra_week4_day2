require( 'sinatra' )
require( 'sinatra/contrib/all' )

require_relative('./models/film')
require_relative('./models/screening')
also_reload('./models/*')

get '/' do
  erb(:home)
end

get '/film' do
  @film = Film.all()
  erb(:film)
end

get "/films/:id" do
  @film_id = Film.find_film_by_id(params[:id])
  erb(:film_id)
end
