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