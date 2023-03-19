class Public::PostsController < ApplicationController

  before_action :authenticate_member!,except:[:top,:about]

  def index

    @search = Post.ransack(params[:q])
    if params[:q]
      @posts = @search.result(distinct: true).page(params[:page]).order(created_at: :desc)
    else
      @posts = @search.result.page(params[:page]).order(created_at: :desc)
    end

  end

  def show
    @post_detail = Post.find(params[:id])
    @post_comment = Comment.new

  end

  def edit
    @post_detail = current_member.posts.find(params[:id])

  end

  def update
    @post_detail = current_member.posts.find(params[:id])
    if @post_detail.update(posts_params)
      @post_detail.save_tags(params[:post][:tag_ids])
      redirect_to post_path(@post_detail)
    else
      render :edit
    end

  end

  def destroy
    @post_detail = current_member.posts.find(params[:id])
    @post_detail.destroy
    redirect_to posts_path

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
      # flash[:notice] =  "まだ投稿されていません。投稿内容を確認し、投稿ボタンをクリックしてください"
       redirect_to  confirm_path(@post_input.id,tag_ids: @tag_ids)
     else
      render :new
     end
    else
      if params[:post][:image]
        @post.image.purge
        @post.image.attach(params[:post][:image])
      end
      @post.image.purge
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
    #byebug
     @post_input = Post.find(params[:id])
     @tag_ids = params[:tag_ids]
  end

  def create
    @post_input = Post.find(params[:id])
    @post_input.update(status:1)

    @post_input.save_tags(params[:post][:tags])

    redirect_to posts_complete_path
  end


  def complete

  end

end

private

def posts_params
  params.require(:post).permit(:title,:prefectues,:area,:access,:nearby_information,:go_around,:impressions,:image, tags_ids: [] )
end