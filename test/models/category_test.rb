require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  test 'the truth' do
    @category = Category.new
    @category.title = '   abc '
    assert_equal('abc', @category.title)
  end
end
