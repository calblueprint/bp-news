class SearchController < ApplicationController

  def index
    @title = "Search"
    @cur_url = "/search"

    if params[:q].to_s.present?
      @results = PgSearch.multisearch(params[:q])

      if params[:page].present?
        @results = @results.paginate(params[:page].to_i)
      end
    end
  end

end
