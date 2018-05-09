Rails.application.routes.draw do
  resources :items
  resources :vendors
  resources :artists
  resources :staffs
  resources :bookings
  resources :users
  resources :performances
  resources :schedules
  #resources :transactions
  resources :stages

  get '/', to: 'sessions#new', as: 'login'
  post '/sessions', to: 'sessions#create', as: 'sessions'
  post '/logout', to: 'sessions#destroy', as: 'logout'
  get '/search', to: 'bookings#find_user'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
