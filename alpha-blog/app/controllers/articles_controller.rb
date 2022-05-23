# frozen_string_literal: true

# ArticlesController
class ArticlesController < ApplicationController
  def show
    @article = Article.find(params[:id])
  end
end
