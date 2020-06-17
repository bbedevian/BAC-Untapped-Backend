Rails.application.routes.draw do
  resources :user_beers
  resources :beers
  resources :users

  get '/utbeers/:id', to: 'api#beers'
end
