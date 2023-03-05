class Admin::PostsController < ApplicationController

before_action :authenticate_manager!

  def index
    # @post_Individual = Post.find(params[:id])
    # @post_detail = Post.page(params[:page])
    @member = Member.find(params[:member_id])
    @post_Individual = Post.where(member_id: params[:member_id]).page(params[:page])
  end

  def show
    @post_detail = Post.find(params[:id])
    @bookmark_count = Bookmark.where(post_id: @post_detail.id).count
  end

  def destroy
    @post_detail = Post.find(params[:id])
    @post_detail.destroy
    redirect_to admin_root_path
  end

end

private

def posts_params
  params.require(:post).permit(:title,:prefectues,:area,:access,:nearby_information,:go_around,:impressions,:image, tags_ids: [] )
end