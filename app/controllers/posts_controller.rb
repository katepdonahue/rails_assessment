class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
  end

  def destroy
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end

  def comment_params
    params.require(:comment).permit(:post_id, :body)
  end

end