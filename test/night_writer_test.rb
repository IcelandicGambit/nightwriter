require 'minitest/autorun'
require 'minitest/pride'
require './lib/night_writer'
require './lib/alphabet'

class NightWriterTest < MiniTest::Test

  def setup
    @night_writer = NightWriter.new
  end

  def test_it_exists
    assert_instance_of NightWriter, @night_writer
  end

  def test_it_translates_from_english_to_braille
    @night_writer.input_message = File.open("english_input_1.txt", "r")
    @night_writer.writer = File.open("braille.txt", "w")

    @night_writer.read_message
    @night_writer.writer.close 

    output = File.open("braille.txt", "r").read
    expected_output = File.open("expected_braille_output_1.txt", "r").read 
    assert_equal output, expected_output
  end

  def test_it_translates_from_english_to_braille_two
    @night_writer.input_message = File.open("english_input_2.txt", "r")
    @night_writer.writer = File.open("braille.txt", "w")

    @night_writer.read_message
    @night_writer.writer.close 

    output = File.open("braille.txt", "r").read
    expected_output = File.open("expected_braille_output_2.txt", "r").read 
    assert_equal output, expected_output
  end

  def test_it_translates_from_english_to_braille_three
    @night_writer.input_message = File.open("english_input_3.txt", "r")
    @night_writer.writer = File.open("braille.txt", "w")

    @night_writer.read_message
    @night_writer.writer.close 

    output = File.open("braille.txt", "r").read
    expected_output = File.open("expected_braille_output_3.txt", "r").read 
    assert_equal output, expected_output
  end
end