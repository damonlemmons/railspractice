Rails.application.routes.draw do
  get '/games' => 'games#try'
  get '/new_game' => 'games#reset'
  get '/games/:number' => 'games#try'

end
