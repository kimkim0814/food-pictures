class CommentsController < ApplicationController
  def create
    comment = Comment.create(comments_params)
    redirect_to "/posts/#{comment.post.id}"
  end

  private
  def comments_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, post_id: params[:post_id])
  end
end
