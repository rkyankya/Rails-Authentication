class PostsController < ApplicationController
  before_action :logged_in?, only: %i[new create]

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save 
      flash[:success] = 'Post created succesfully'
      redirect_to posts_path
    end
  end

  def index
    @posts = Post.all
  end

  private

  def post_params
    params.require(:post).permit(:body)
  end

  def logged_in?
    unless logged?
      flash[:danger] = 'Please log in if you want to create a post'
      redirect_to login_path
    end
  end
end
