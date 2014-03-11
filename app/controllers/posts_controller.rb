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
    @post = Post.create(params[:post])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(params[:post])
    redirect_to :post
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