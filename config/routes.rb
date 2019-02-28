Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    get '/query_params_url' => 'pages#query_action'
    get '/name_route' => 'pages#name_action'
    get '/game_route' => 'pages#game_action'
    get '/segment_route/:apple' => 'pages#segment_action'
    get '/segment_game_route/:user_guess' => 'pages#segment_game'
  end
end
