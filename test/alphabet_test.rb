require 'minitest/autorun'
require 'minitest/pride'
require './lib/alphabet'

class AlphabetTest < MiniTest::Test

  def setup
    @alphabet = Alphabet.new
  end

  def test_it_exists
    assert_instance_of Alphabet, @alphabet
  end

  def test_it_has_attributes
    
    assert_equal ["0.", "..", ".."], @alphabet.english_braille["a"]
    assert_equal [".0", "0.", "0."], @alphabet.english_braille["s"]
  end
end