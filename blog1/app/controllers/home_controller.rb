class HomeController < ApplicationController
    def ok
        render plain: "OK"
    end

    def index
        @categories = Category.all.includes(:posts)
        @tags = Tag.includes(:posts)
        @posts = Post.includes(:tags).order_by_latest.published
        #render plain: "This is an index page."
    end

    def tag_search

        if params.has_key? (:tag)
          # @posts = Tag.find_by(:name => params[:tag]).posts
          
          result = Tag.where(name: params[:tag])
          @posts = result.blank? ? [] : result.first.posts
    
        end
    
        render "home/index"
    end

    def category_search_post

        if params.has_key? (:category)
        @posts = Category.find_by(:slug=> params[:category]).posts
    
        end
    
        render "home/index"
    end

    def read
        @post=Post.find(params[:id])
    end
    def about
        #render plain:"This is a about page"
    end

    def contact
        #render plain:"This is a contact page"
    end
end