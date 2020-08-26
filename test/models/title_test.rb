require 'test_helper'

class TitleTest < ActiveSupport::TestCase
  test "should have text" do
    assert_not_nil Title.first.text
  end
end
