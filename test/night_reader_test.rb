require 'minitest/autorun'
require 'minitest/pride'
require './lib/night_reader'
require './lib/night_reader'

class NightReaderTest < MiniTest::Test

  def setup
    @input_message = File.open(ARGV[0], "r")
    @alphabet = Alphabet.new
    @writer = File.open(ARGV[1], "w+")
    @night_reader = NightReader.new
  end

  def test_it_exists
    assert_instance_of NightReader, @night_reader
  end
end