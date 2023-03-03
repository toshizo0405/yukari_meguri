class Admin::PostsController < ApplicationController

  def index
    # @post_Individual = Post.find(params[:id])
    # @post_detail = Post.page(params[:page])
    @member = Member.find(params[:member_id])
    @post_Individual = Post.where(member_id: params[:member_id]).page(params[:page])
  end

  def show
    @post_detail = Post.find(params[:id])
    
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