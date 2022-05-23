# frozen_string_literal: true

# model para articles
class Article < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
end
