Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show, :edit, :uopdate]

  root to: 'top#index'
end
