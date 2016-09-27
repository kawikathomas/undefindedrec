Rails.application.routes.draw do
  devise_for :users
  resources :leagues
  root "home#index"

  # users
  get '/profile' => 'users#show', as: 'user'
  get '/profile/edit' => 'users#edit'
  patch '/profile' => 'users#update'

  # admin
  get '/admins/:id/edit' => 'admins#edit', as: 'admins_edit'
  # patch '/admins/:id' => 'admins#update'
end
