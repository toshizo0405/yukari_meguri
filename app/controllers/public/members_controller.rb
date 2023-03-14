class Public::MembersController < ApplicationController

  before_action :authenticate_member!,except:[:top,:about]

  def show
    @member = current_member
    @posts = @member.posts.page(params[:page])
  end

  def edit
    @member = current_member
  end

  def update
    @member =current_member
    if @member.update(member_params)
    redirect_to members_my_page_path
    else
    render :edit
    end
  end

  def withdraw
    @member =current_member
    @member.update(withdrawal:true)
    reset_session
    redirect_to new_member_registration_path
  end

  def unsubscribe
    @member = current_member
  end

  def bookmarks
    bookmarks = Bookmark.where(member_id: current_member.id).pluck(:post_id)
    @bookmark_posts = Post.find(bookmarks)
    @bookmark_posts=Post.page(params[:page]).order(created_at: :desc)
  end

  def index
    @member = Member.find(current_member.id)
    @post_Individual = Post.where(member_id: @member.id).page(params[:page]).order(created_at: :desc)
  end

end

private

def member_params
  params.require(:member).permit(:last_name,:first_name,:last_name_kana,:first_name_kana,:email)
end