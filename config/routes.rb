Rails.application.routes.draw do
  devise_for :users
  # resources :users, :only => [:show]
  root 'users#show'
  # 
  # get 'welcome/index'
  #
  # root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
