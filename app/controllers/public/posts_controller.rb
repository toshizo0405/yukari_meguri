class Public::PostsController < ApplicationController

  def index
    @posts=Post.page(params[:pege])
  end

  def show

  end

  def edit

  end

  def update

  end

  def destroy

  end

  def unsubscribe

  end

  def new
    @post_input = Post.new
  end

  def create
    @post_input = Post.new(posts_params)
    @post_input.save
    redirect_to posts_unsubscribe_path
  end

end

private

def posts_params
  params.require(:post).permit(:title,:prefectues,:area,:access,:nearby_information,:go_around,:impressions)
end
