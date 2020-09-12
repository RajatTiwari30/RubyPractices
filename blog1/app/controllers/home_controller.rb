class HomeController < ApplicationController
    def ok
        render plain: "OK"
    end

    def index
        @categories = Category.all
        @tags = Tag.all
        @posts = Post.all
        #render plain: "This is an index page."
    end
    def about
        #render plain:"This is a about page"
    end

    def contact
        #render plain:"This is a contact page"
    end
end