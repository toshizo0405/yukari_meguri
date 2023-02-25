class ApplicationController < ActionController::Base

add_flash_types :success, :info, :warning, :danger

def index
  # 検索オブジェクト
  @search = Post.ransack(params[:q])
  # 検索結果
  @posts = @search.result
end

end
