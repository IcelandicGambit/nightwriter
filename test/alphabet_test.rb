require 'minitest/autorun'
require 'minitest/pride'
require './lib/alphabet'

class RosettaStoneTest < MiniTest::Test

  def setup
    @alphabet = Alphabet.new
  end

  def test_it_exists
    assert_instance_of Alphabet, @alphabet
  end
end