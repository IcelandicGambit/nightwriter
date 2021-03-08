require 'minitest/autorun'
require 'minitest/pride'
require './lib/translator'
require './lib/alphabet'


class TranslatorTest < MiniTest::Test

  def setup
    @translator = Translator.new
  end

  def test_it_exists
    assert_instance_of Translator, @translator
  end
end