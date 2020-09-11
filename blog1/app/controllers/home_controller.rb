class HomeController < ApplicationController
    def ok
        render plain: "OK"
    end

    def index
        @check = ["Check1","Check2"]
        #render plain: "This is an index page."
    end
    def about
        #render plain:"This is a about page"
    end

    def contact
        #render plain:"This is a contact page"
    end
end