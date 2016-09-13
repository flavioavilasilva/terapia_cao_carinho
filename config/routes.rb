Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  resources :events, only: [:new, :show, :create]
  resources :therapist_dogs, only: [:new, :create, :show]
end
