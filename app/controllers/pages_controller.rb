class PagesController < ApplicationController

    def show
        @page = Page.find(params[:id])
        @posts = @page.posts.all
        @post = Post.new
    end

    def create
        @page = Page.new(page_params)
        @page.save

        redirect_to root_path
    end

    def destroy
        @page = Page.find(params[:id])
        @page.destroy
        redirect_to root_path
    end

    private
    def page_params
        params.require(:page).permit(:title)
    end


end
