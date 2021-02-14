Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # namespace :api do
  #   namespace :v1 do
      resources :goals;
      resources :tasks;
      resources :users;

      resources :auth, only: [:create, :show, :index]

      # post '/auth', to: 'auth#create'
      get '/current_user', to: 'auth#show'

  #   end
  # end
end
