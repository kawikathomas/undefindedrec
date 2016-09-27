Rails.application.routes.draw do
  devise_for :users
  resources :leagues
  resources :teams, only: [:show]
  root "home#index"

  # users
  get '/profile' => 'users#show', as: 'user'
  get '/profile/edit' => 'users#edit'
  patch '/profile' => 'users#update'


  namespace :admin do
    resources :users, only: [:edit, :update]
    resources :teams, only: [:new, :create, :edit, :update, :destroy]
  end

  put '/users/join' => 'users#join'

  # admin
  get '/admins/:id/edit' => 'admins#edit', as: 'admins_edit'
  # patch '/admins/:id' => 'admins#update'


  # get '/admins/users/:id/edit' => 'admins#edit', as: 'admins_edit'
  get '/admin/profile' => 'admin#show'
  # get '/admins/teams/new' => 'admins/team#new', as: 'admins_team'

end
