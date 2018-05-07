Rails.application.routes.draw do
  resources :items
  resources :vendors
  resources :accesses
  resources :staffs
  resources :venues
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
