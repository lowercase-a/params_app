Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    get '/query_params_url' => 'pages#query_action'
    get '/name_route' => 'pages#name_action'
    get '/game_route' => 'pages#game_action'
  end
end
