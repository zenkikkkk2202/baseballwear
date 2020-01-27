class LikesController < ApplicationController
  before_action :set_dream

  def create
    @like = Like.create(user_id: current_user.id, dream_id: @dream.id)
  end

  def destroy
    @like = Like.find_by(user_id: current_user.id, dream_id: @dream.id)
    @like.destroy
  end

  private
  def set_dream
    @dream = Post.find(params[:dream_id])
  end
    
end
