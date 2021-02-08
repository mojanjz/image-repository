Rails.application.routes.draw do
  devise_for :users
  resources :posts
  get '/search' => 'posts#search', :as => 'search_page'
  root :to => 'posts#index'
  resources  :users do
    resources :posts, only: [:index]
   end
end
