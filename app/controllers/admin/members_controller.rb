class Admin::MembersController < ApplicationController

  before_action :authenticate_manager!

  def index
    @members = Member.page(params[:page])
  end

  def show
    @member = Member.find(params[:id])
  end

  def edit
    @member = Member.find(params[:id])
  end

  def update
    @member = Member.find(params[:id])
    if @member.update(member_params)
      redirect_to admin_member_path(@member.id)
    else
      render :edit
    end
  end

end

private

def member_params
  params.require(:member).permit(
    :last_name,:first_name,:last_name_kana,:first_name_kana,
    :email,:encrypted_password,:withdrawal)
end