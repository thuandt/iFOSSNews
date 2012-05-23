class SearchController < ApplicationController
  def index
      @articles = Article.search(params[:search])
  end
end
