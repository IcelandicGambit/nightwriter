require './lib/alphabet'
require './lib/translator'

class NightWriter
  attr_reader :original_message,
              :translated_message,
              :alphabet

  def initialize
    @original_message =  File.open(ARGV[0]).read
    @translated_message = []
    @alphabet = Alphabet.new
  end


  def read_message
     puts @original_message
    @original_message.split("").each do |letter|
     @translated_message << @alphabet.english_braille[letter]
    end
     writer = File.open(ARGV[1], "w")
     writer.write @translated_message
     puts "Created #{ARGV[1]} containing #{@original_message.length} characters"
  end
end
NightWriter.new.read_message





