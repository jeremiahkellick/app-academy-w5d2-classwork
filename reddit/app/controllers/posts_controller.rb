class PostsController < ApplicationController
  before_action :require_login
  
  def new 
    @post = Post.new
  end 
  
  def create 
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    @post.post_id =
  end 
  
  def show 
  end 
  
  def edit 
  end 
  
  def update
  end 
  
  def destroy 
  end 
  
  def post_params
    params.require(:post).permit(:title, :url, :content)
  end 
end
