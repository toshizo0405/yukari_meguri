class Admin::HomesController < ApplicationController
  def top
    @posts=Post.page(params[:page])
  end

end
