class NewController < ApplicationController
  def index
    @articles = Article.all
  end
end
