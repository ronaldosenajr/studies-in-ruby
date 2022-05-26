# frozen-string-literal: true

# Migration to add password_digest to users table
class AddPasswordDigestToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :password_digest, :string
  end
end
