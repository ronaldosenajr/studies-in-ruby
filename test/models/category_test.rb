# frozen_string_literal: true

require 'test_helper'

# a class named category_test that inherits from ActiveSupport::TestCase
class CategoryTest < ActiveSupport::TestCase
  test 'category should be valid' do
    @category = Category.new('Sports')
    assert @category.valid?
  end
end
