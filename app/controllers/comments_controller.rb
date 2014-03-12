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
    @comment = Comment.create(params[:comment])
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

end