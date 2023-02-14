class Public::MembersController < ApplicationController

  def show
    @member = current_member
  end

  def edit
    @member_edit = current_member
  end

  def update
    @member =current_member
    @member.update(member_params)
    redirect_to members_my_page_path
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

end

private

def member_params
  params.require(:member).permit(:last_name,:first_name,:last_name_kana,:first_name_kana,:email)
end