Rails.application.routes.draw do
  devise_for :users
  resources :leagues
  root "home#index"
end
