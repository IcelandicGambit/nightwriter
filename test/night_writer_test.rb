require 'minitest/autorun'
require 'minitest/pride'
require './lib/night_writer'

class NightWriterTest < MiniTest::Test

  def setup
    @object = Object.new
  end

  def test_it_exists
    assert_instance_of Object, @object
    assert_equal 'answer', @object.attribute_method
  end
end