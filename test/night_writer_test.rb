require 'minitest/autorun'
require 'minitest/pride'
require './lib/night_writer'
require './lib/alphabet'

class NightWriterTest < MiniTest::Test

  def setup
    @input_message = File.open(ARGV[0], "r")
    @alphabet = Alphabet.new
    @writer = File.open(ARGV[1], "w+")
    @night_writer = NightWriter.new
  end

  def test_it_exists
    assert_instance_of NightWriter, @night_writer
  end
end