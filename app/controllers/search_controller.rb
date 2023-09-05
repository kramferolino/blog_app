class SearchController < ApplicationController
  def index
    @query = Post.includes(:user, :rich_text_body).ransack(params[:q])
    @posts = @query.result(distinct: true)
  end
end
