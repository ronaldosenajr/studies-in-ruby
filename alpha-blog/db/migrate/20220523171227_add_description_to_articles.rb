# frozen_string_literal: true

# Add description column to articles table
class AddDescriptionToArticles < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :description, :text
  end
end
