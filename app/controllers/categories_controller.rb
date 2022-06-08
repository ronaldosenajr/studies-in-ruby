# frozen_string_literal: true

# a class for categories controller
class CategoriesController < ApplicationController
  def new
  end

  def index
    @categories = Category.all
  end

  def show
  end

end
