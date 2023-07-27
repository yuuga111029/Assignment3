Rails.application.routes.draw do

  get 'homes/about'
  get 'users/index'
  get 'books/index'
  get 'users/show'
  get 'users/edit'
  # get '/users/:id/edit', to: 'users#edit', as: :edit_user
  devise_for :users
  root to: 'homes#top'

  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  resources :users, only: [:index, :show, :edit, :update]

end
