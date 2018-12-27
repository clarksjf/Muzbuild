Rails.application.routes.draw do
  get 'feed', to: 'feed#show'


  resources :users, only: :show, param: :username do
  	member do
  		post 'follow', to: 'follows#create'
  		delete 'unfollow', to: 'follows#destroy'
  	end
  end

  resources :items
  resources :tweets
  ActiveAdmin.routes(self)
  devise_for :users


  root 'pages#home'
  get 'about', to: 'pages#about'
  get 'contactus', to: 'pages#contactus'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
