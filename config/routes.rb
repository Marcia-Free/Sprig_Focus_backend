Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # namespace :api do
  #   namespace :v1 do
      resources :goals;
      resources :tasks;
      resources :songs;
      resources :auth, only: [:create, :index, :signup, :show]

      post '/auth', to: 'auth#create'
      get '/current_user', to: 'auth#show'
      post '/signup', to: 'auth#signup'

  #   end
  # end
end
