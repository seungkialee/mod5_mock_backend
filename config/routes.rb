Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: %i[index show create]
      resources :accounts, only: %i[index create show update]
      resources :transactions, only: %i[index create]

      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
      # get '/currentuser', to: 'auth#show'

      get '/current_user', to: 'auth#show'
    end
  end
end
