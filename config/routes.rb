Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: %i[index show create]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'

      # get '/current_user', to: 'users_auth#show'
    end
  end
end
