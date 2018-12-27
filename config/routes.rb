Rails.application.routes.draw do
  get 'users/:username', to: 'users#show', as: 'user'
  resources :items
  resources :tweets
  ActiveAdmin.routes(self)
  devise_for :users


  root 'pages#home'
  get 'about', to: 'pages#about'
  get 'contactus', to: 'pages#contactus'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
