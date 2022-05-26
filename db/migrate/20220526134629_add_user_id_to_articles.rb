# frozen_string_literal: true

# Migration for add user_id to Articles
class AddUserIdToArticles < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :user_id, :integer
  end
end
