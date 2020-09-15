Rails.application.routes.draw do
  devise_for :users
  resources :posts
  get 'tags/index'
  resources :categories
  resources :tags
  get 'home/read/:id', to: 'home#read', :as => :post_read
  get 'home/:tag/posts', to: 'home#tag_search', :as => :tag_search
  get 'category/index'
  get 'category/show'
  get 'home/posts/:category', to: 'home#category_search_post', :as => :category_search_post
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root 'home#index'
get 'home/ok'
get 'home/index'
get 'home/about', as: :about
get 'home/contact', as: :contact
end
