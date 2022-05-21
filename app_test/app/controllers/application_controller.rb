# frozen_string_literal: true

# Hello World Class
class ApplicationController < ActionController::Base
  def hello
    render html: 'Hello World!'
  end
end
