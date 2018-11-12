Rails.application.routes.draw do

  post "api/v1/relationships/unfollow", to: "api/v1/relationships#unfollow", as: "unfollow"
  get "api/v1/posts/feed/:user_id", to: "api/v1/posts#feed", as: "feed"
  get "api/v1/users/search/:search_term", to: "api/v1/users#search", as: "search"
  post "api/v1/bookmarked_posts/unbookmark", to: "api/v1/bookmarked_posts#unbookmark"

  namespace :api do
    namespace :v1 do
      resources :likes
      resources :comments
      resources :relationships
      resources :posts
      resources :users
      resources :sessions
      resources :bookmarked_posts

    end
  end



end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
