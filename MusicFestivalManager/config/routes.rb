Rails.application.routes.draw do
  resources :items
  resources :vendors
  resources :accesses
  resources :staffs
  resources :venues
  resources :lodgings
  resources :bookings
  resources :users

  get '/signin', to: 'sessions#new', as: 'login'
  post '/sessions', to: 'sessions#create', as: 'sessions'
  post '/logout', to: 'sessions#destroy', as: 'logout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
