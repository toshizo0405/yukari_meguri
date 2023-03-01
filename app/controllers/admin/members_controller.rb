class Admin::MembersController < ApplicationController

  def index
    @members = Member.all
  end

  def show
    @member = Member.find(params[:id])
  end

  def edit

  end

  def update

  end

end

private

def member_params
  params.require(:member).permit(
    )
end