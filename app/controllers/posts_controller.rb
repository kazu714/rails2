class PostsController < ApplicationController
    def index
        @pages = Page.all
        @page = Page.new
    end
    
    def show
        @page = Page.find(params[:id])
        @posts = @page.posts.all
    end

    def create
        
        @post = Post.new(post_params)
        #@page.posts.new(post_params)
        
        @post.save
        redirect_to "/pages/#{@post.page_id}"        
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        redirect_to root_path 
    end

    private

    def post_params
        params.require(:post).permit(:name,:page_id)
    end
end
