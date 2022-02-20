class PostsController < ApplicationController

    def new
        @post = Post.new
        @post.place_id = params["place_id"]
    end

    def create
        @post = Post.new(params["post"])
        @post.save
        redirect_to "/places/#{@post.place_id}"
    end

# out of scope of hw -- just playing around with code

    def show
        @post = Post.find(params["id"])
    end

    def destroy
        @post = Post.find(params["id"])
        post.destroy
        redirect_to "/places"
    end

end
