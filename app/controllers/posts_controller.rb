class PostsController < ApplicationController
    
    def show
        @message = "Welcome Home!"
        @posts = Post.all
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)
        if @post.save
            redirect_to :home

        else
            render :new
        end

    end

    private

      def post_params
        params.require(:post).permit(:content, :user_name)
      end





end
