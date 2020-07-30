class CommentsController < ApplicationController
  def create
    comment = Comment.create(comments_params)
    redirect_to "/posts/#{comment.post.id}"
  end

  def destroy
    Comment.find(params[:id]).destroy
    redirect_back(fallback_location: root_path)
  end

  def edit

  end

  private
  def comments_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, post_id: params[:post_id])
  end
end
