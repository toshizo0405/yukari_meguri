class Admin::HomesController < ApplicationController

  before_action :authenticate_manager!

  def top
    @posts=Post.page(params[:page]).order(created_at: :desc)
  end

end
