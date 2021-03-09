require 'minitest/autorun'
require 'minitest/pride'
require './lib/night_reader'


class NightReaderTest < MiniTest::Test

  def setup
    @night_reader = NightReader.new
  end

  def test_it_exists
    assert_instance_of NightReader, @night_reader
  end

  def test_it_translates_from_braille_to_english
    @night_reader.input_message = File.open("braille_input_1.txt", "r")
    @night_reader.writer = File.open("english.txt", "w")

    @night_reader.read_message
    @night_reader.writer.close 

    output = File.open("english.txt", "r").read
    expected_output = File.open("expected_english_output_1.txt", "r").read 
    assert_equal output, expected_output
  end

  def test_it_translates_from_braille_to_english_two
    @night_reader.input_message = File.open("braille_input_2.txt", "r")
    @night_reader.writer = File.open("english.txt", "w")

    @night_reader.read_message
    @night_reader.writer.close 

    output = File.open("english.txt", "r").read
    expected_output = File.open("expected_english_output_2.txt", "r").read 
    assert_equal output, expected_output
  end

  def test_it_translates_from_braille_to_english_three
    @night_reader.input_message = File.open("braille_input_3.txt", "r")
    @night_reader.writer = File.open("english.txt", "w")

    @night_reader.read_message
    @night_reader.writer.close 

    output = File.open("english.txt", "r").read
    expected_output = File.open("expected_english_output_3.txt", "r").read 
    assert_equal output, expected_output
  end
end