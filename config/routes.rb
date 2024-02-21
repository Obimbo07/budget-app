Rails.application.routes.draw do
  resources :groups
  resources :items
  devise_for :users, controllers: { 
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords',
    confirmations: 'users/confirmations',
    unlocks: 'users/unlocks'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "splash#index"

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get "splash" => "splash#index"

  # Defines the root path route ("/")
  # root "posts#index"
end
