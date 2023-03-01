class Admin::MembersController < ApplicationController

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

  end

end

private

def member_params
  params.require(:member).permit(
    :last_name,:first_name,:last_name_kana,:first_name_kana,
    :email,:encrypted_password,:withdrawal)
end