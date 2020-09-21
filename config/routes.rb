Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :create, :show]
  resources :sessions
  resources :events, except: [:edit,:destroy] 
  root 'users#index'

   post '/attend' => 'events#register'

   get '/login' => 'sessions#new'
   post '/login' => 'sessions#create'
end
