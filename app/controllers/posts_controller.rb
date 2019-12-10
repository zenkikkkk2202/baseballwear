class PostsController < ApplicationController
  def index
    @posts = Post.all.order("created_at DESC").page(params[:page]).per(3)
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
    redirect_to root_path
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comments = @post.comments.includes(:user)
  end

  def edit    
    @post = Post.find(params[:id])
  end

  def update
     post = Post.find(params[:id])
     post.update(post_params)
     redirect_to root_path
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    
  end

  private
    def post_params
      params.require(:post).permit(:text,:image,:team).merge(user_id: current_user.id)
    end
end
