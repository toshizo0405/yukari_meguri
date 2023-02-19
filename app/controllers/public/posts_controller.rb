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
    if params[:id]
      @post_input = current_member.posts.find(params[:id])
    else
    @post_input = Post.new
    end
  end

  def unsubscribe
    @post = current_member.posts.find_by(status: 0)
    if @post.nil?
    @post_input = Post.new(posts_params)
    @post_input.image.attach(params[:post][:image])
    @post_input.member_id = current_member.id
    @tag_ids = params[:post][:tag_ids]
     if @post_input.save
       redirect_to  confirm_path(@post_input.id,tag_ids: @tag_ids)
     else
      render :new
     end
    else
    if params[:post][:image]
    @post.image.purge
    @post.image.attach(params[:post][:image])
    end
    @post.member_id = current_member.id
    @tag_ids = params[:post][:tag_ids]
      if @post.update(posts_params)
       redirect_to  confirm_path(@post.id,tag_ids: @tag_ids)
     else
      render :new
     end
    end

  end

  def confirm
     @post_input = Post.find(params[:id])
     @tag_ids = params[:tag_ids]
  end

  def create
    @post_input = Post.find(params[:id])
    @post_input.update(status:1)
    redirect_to posts_complete_path
  end


  def complete

  end

end

private

def posts_params
  params.require(:post).permit(:title,:prefectues,:area,:access,:nearby_information,:go_around,:impressions,:image,tags_ids: [] )
end
