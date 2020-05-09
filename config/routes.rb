Rails.application.routes.draw do
  resources :parcels
  resources :contents
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'parcels#index', as: 'home'
end
