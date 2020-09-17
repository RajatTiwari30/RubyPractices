Rails.application.routes.draw do
  devise_for :users
  post "home/comments/:post_id", to: "home#comments", as: :comments

  scope :admin do
    resources :posts
    resources :categories
    resources :tags
  end

  get 'tags/index'
  get 'category/index'
  get 'category/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    get "posts", to: "posts#index"
    get "posts/:id", to: "posts#show"
    post "posts", to: "posts#create"   
    delete "posts/:id", to:"posts#destroy" 
  end
  
  scope :public do 
    get "home/search", to: "home#search", :as => :post_search
    get "home/read/:id", to: "home#read", :as => :post_read
    get "home/:tag/posts", to: "home#tag_search", :as => :tag_search
    get 'home/posts/:category', to: 'home#category_search_post', :as => :category_search_post
    get 'home/ok'
    get 'home/index'
    get 'home/about', as: :about   #about_path or about_url
    get 'home/contact', as: :contact
  end

  root 'home#index'
end
