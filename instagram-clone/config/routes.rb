Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :likes
      resources :comments
      resources :relationships
      resources :posts
      resources :users
      resources :sessions
    end
  end



end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
