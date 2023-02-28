class Admin::HomesController < ApplicationController
  def top
    #byebug
    @posts=Post.page(params[:page])
  end

end
