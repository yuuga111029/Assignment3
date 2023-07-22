Rails.application.routes.draw do

  get 'users/show'
  get 'users/edit'
  devise_for :users
  root to: 'homes#top'

  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  resources :users, only: [:show, :edit, :update]

end
