Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :actors
  # get('/actors', to: 'actors#index')
  
  resources :movies
  # get '/comedians' => 'actors#index', as: 'actors'
  # get({'/actors/new' => 'actors#new'})
  # get('/actors' => 'actors#index')
  # post('/actors' => 'actors#create')
  #
end
