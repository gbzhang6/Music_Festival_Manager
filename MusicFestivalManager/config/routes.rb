Rails.application.routes.draw do
  resources :artists do
    resources :performances, :only => [:index, :create]
  end

  resources :bookings
  resources :users
  resources :performances
  resources :schedules
  #resources :transactions
  resources :stages



  get '/', to: 'sessions#new', as: 'login'
  post '/sessions', to: 'sessions#create', as: 'sessions'
  post '/logout', to: 'sessions#destroy', as: 'logout'
  get '/home', to: 'sessions#index'

  get '/search', to: 'bookings#find_friend'

  get '/schedules/:id/share', to: 'schedules#share_schedule', as: 'share'

  get '/analytics', to: 'analytics#index', as: 'analytics'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
