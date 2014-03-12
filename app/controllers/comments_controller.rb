class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def new
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.create(params[:comment])
    @post.comments << @comment
    @post.save
    redirect_to @post
  end

  def edit
    @comment = Comment.find(params[:id])
    redirect_to :post
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(params[:comment])
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