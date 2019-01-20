class PostsController < ApplicationController
    def index
        @posts = Post.order('created_at')
    end

    def show
        @post = Post.find(params[:id])
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(permitted_params)
        if @post.save
            redirect_to @post
        else
            render action: :new
        end
    end

    private
        def permitted_params
            params.require(:post).permit(:title, :body, :thumbnail, :category)
        end
end
