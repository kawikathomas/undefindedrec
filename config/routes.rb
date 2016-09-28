Rails.application.routes.draw do
  devise_for :users
  resources :leagues
  resources :teams, only: [:show, :destroy]
  root "home#index"

  # users
  get '/profile' => 'users#show', as: 'user'
  get '/profile/edit' => 'users#edit'
  patch '/profile' => 'users#update'
  put "/admin/users/removeteam" => "admin/users#removeteam"

  namespace :admin do
    resources :users, only: [:edit, :update]
    resources :teams, only: [:new, :create, :edit, :update, :destroy]

    resources :leagues do
      resources :games, only: [:new, :create, :edit, :update, :destroy]
    end
  end

  put '/users/join' => 'users#join', as: 'user_join'
  # admin
  get '/admins/:id/edit' => 'admins#edit', as: 'admins_edit'
  get '/admin/profile' => 'admin#show'
  post "/admin/teams/teamplayer" => "admin/teams#teamplayer", as: 'admin_teamplayer'

end
