class SearchController < ApplicationController

  def index
    @title = "Search"
    @cur_url = "/search"
    if params[:what].to_s.empty?
      params[:what] = "all"
    end

    @results = []
    if params[:q].to_s.present?
      case params[:what]
      when "all"
        @results = Story.search(params[:q]) + Comment.search(params[:q])
      when "users"
        @results = User.search(params[:q])
      when "stories"
        @results = Story.search(params[:q])
      when "comments"
        @results = Comment.search(params[:q])
      end

      if params[:page].present?
        @results = @results.paginate(params[:page].to_i)
      end
    end
  end

end
