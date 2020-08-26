require 'test_helper'

class SentenceTest < ActiveSupport::TestCase
  setup do
    @sentence = Sentence.all.sample
  end

  test "should have title" do
    assert_not_nil @sentence.title
  end

  test "should have text" do
    assert_not_nil @sentence.text
  end
end
