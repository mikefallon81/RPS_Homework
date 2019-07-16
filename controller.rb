require('sinatra')
require('sinatra/reloader') if development?

require_relative('./models/rps.rb')
also_reload('./models/*')

get '/rock/scissors' do
   "Rock wins"
end


get '/check_win/:hand1/:hand2' do
hand1 = params[:hand1].downcase
hand2 = params[:hand2].downcase
@game = RPSGame.check_win(hand1, hand2)
erb(:result)
end

get '/rules' do
  erb(:rules)
end

get '/result' do
  erb(:result)
end

get '/welcome' do
  erb(:welcome)
end

get '/check_win' do
  erb(:check_win)
end
