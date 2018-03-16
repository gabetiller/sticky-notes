Rails.application.routes.draw do
  devise_for :users
  # resources :users, :only => [:show]
  root 'users#show'
  resources :users do
    resources :items
  end

  resources :items, only: [:update, :show]
  #
  get 'welcome/index'
  #
  # root 'welcome#index'

end
