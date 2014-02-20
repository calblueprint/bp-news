class SearchController < ApplicationController

  def index
    @title = "Search"
    @cur_url = "/search"

    if params[:q].to_s.present?
      case params[:what]
      when "all"

      when "users"
        @results = User.search(params[:q])
      when "stories"

      when "comments"

      else
        @results = []
      end

      if params[:page].present?
        @results = @results.paginate(params[:page].to_i)
      end
    end
  end

end
