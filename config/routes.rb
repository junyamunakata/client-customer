Rails.application.routes.draw do
  devise_for :users
  resources :clients
  resources :comments, only: [:create, :destroy]
  root "clients#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
