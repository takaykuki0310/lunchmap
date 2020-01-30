Rails.application.routes.draw do
  root to: 'pages#home'

  resources 'shops', only: %i[index]
  resources 'reports'

  get '/login', to: 'user_sessions#new', as: :login
  post '/login', to: 'user_sessions#create'
  delete '/logout', to: 'user_sessions#destroy', as: :logout

  resources :users, only: %i[new create]
end
