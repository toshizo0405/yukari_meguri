class Admin::HomesController < ApplicationController

  before_action :authenticate_manager!

  def top
    @posts=Post.page(params[:page])
  end

end
