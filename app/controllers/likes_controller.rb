class LikesController < ApplicationController
  def new
    @like = Like.new
  end

  def create
    @post = Post.find(params[:post_id])
    @like = @post.likes.new
    @like.author_id = @user.id
    @like.post_id = @post.id
    if @like.save
      redirect_to user_post_path(@user, @post)
    else
      render :new
    end
  end
end
