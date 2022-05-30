# frozen-string-literal: true

# Migration to add admin column to users table
class AddAdminToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :admin, :boolean, default: false
  end
end
