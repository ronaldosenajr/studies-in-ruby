# frozen_string_literal: true

# a migration for categories
class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :name
      t.timestamps
    end
  end
end
