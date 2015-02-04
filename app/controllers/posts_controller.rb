require 'pry'
class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = 3

    if @post.save
      flash[:notice] = 'Your post was saved.'
      redirect_to posts_path
    else
      render :new
    end

  end


  private

  def post_params
    params.require(:post).permit(:title, :body, :user_id)
  end
end
