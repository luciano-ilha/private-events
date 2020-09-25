Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: %i[new create show]
  resources :sessions
  root 'users#index'

  resources :events do
    member do
      post 'register'
    end
  end

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
end
