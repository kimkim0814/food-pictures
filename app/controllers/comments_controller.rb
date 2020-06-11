class CommentsController < ApplicationController
  def create
    comment = Comment.create(comments_params)
    redirect_to "/posts/#{comment.post.id}"

    # @comment = Comment.new(comment_params)
    # if @comment.save
    #  redirect_to item_path
    # else
    #   redirect_to item_path
    # end
    # @item = Item.find(params[:item_id])
  end

  private
  def comments_paramms
    params.require(:comment).permit(:text).merge(user_id: current_user.id, post_id: params[:post_id])
  end
end
