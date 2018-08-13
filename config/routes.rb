Rails.application.routes.draw do
  devise_for :users

  resources :contacts, only: [:new, :create]

  get 'posts/index'
  get 'posts/downloads'
  get 'posts/literature'
  get 'posts/news'
  root 'posts#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
