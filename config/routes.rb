Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    get '/query_params_url' => 'pages#query_action'
    get '/name_route' => 'pages#name_action'
    get '/game_route' => 'pages#game_action'
    get '/segment_route/:apple' => 'pages#segment_action'
    get '/segment_game_route/:guess' => 'pages#game_action'
    post '/body_params' => 'pages#body_params_action'
  end
end
