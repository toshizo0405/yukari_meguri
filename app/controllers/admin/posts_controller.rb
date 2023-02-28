class Admin::PostsController < ApplicationController

  def index

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