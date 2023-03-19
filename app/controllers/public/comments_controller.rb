class Public::CommentsController < ApplicationController

  def create
    @post_detail = Post.find(params[:post_id])
    @post_comment = current_member.comments.new(comment_params)
    @post_comment.post_id = @post_detail.id
    if @post_comment.save
       redirect_to post_path(@post_detail)
    else
       render 'public/posts/show'
    end
  end

  def destroy
    Comment.find(params[:id]).destroy
    redirect_to post_path(params[:post_id])
  end

  private

  def comment_params
    params.require(:comment).permit(:comment)
  end


end
