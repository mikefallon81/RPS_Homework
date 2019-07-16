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