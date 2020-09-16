class HomeController < ApplicationController
    def ok
        render plain: "OK"
    end

    def index
        @categories = Category.all.includes(:posts)
        @tags = Tag.includes(:posts)
        @posts = Post
        .includes(:tags)
        .published.order_by_latest
        .page(params[:page]).per(5)
        #render plain: "This is an index page."
    end

    def search 
        # todo 
        q = params[:q]
    
        @posts = Post.includes(:tags).where('title LIKE ? OR tags.name LIKE ?', "%#{q}%", "%#{q}%").references(:tags).page(params[:page]).per(5)
      #  @posts = Post.includes(:tags).where('tags.name LIKE ?', "%#{q}%").references(:tags).page(params[:page]).per(5) 
           # % for contains search
    
        render "home/index"
    
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