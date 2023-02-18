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

  def new
    @post_input = Post.new
  end

  def unsubscribe
    @post_input = Post.new(posts_params)
    @post_input.member_id = current_member.id
     if @post_input.invalid? #入力項目に空のものがあれば入力画面に遷移
      render :new
     end
  end

  def create
    @post_input = Post.new(posts_params)
    @post_input.save
    redirect_to posts_unsubscribe_path
  end

  def complete

  end

end

private

def posts_params
  params.require(:post).permit(:title,:prefectues,:area,:access,:nearby_information,:go_around,:impressions,:image)
end
