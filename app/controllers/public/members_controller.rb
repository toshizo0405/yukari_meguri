class Public::MembersController < ApplicationController

  def show
    @member = current_member
  end



  def withdraw
    @member =current_member
    @member.update(withdrawal:true)
    reset_session
    redirect_to new_member_registration_path
  end
end
