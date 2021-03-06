require_relative 'alphabet'

class NightReader
  attr_accessor :input_message,
              :braille_message,
              :alphabet,
              :english_message,
              :writer

  def initialize
    @braille_message = []
    @english_message = []
    @alphabet = Alphabet.new
    if ARGV[0].nil?
      @input_message = []
      @writer = nil 
    else
      @input_message = File.open(ARGV[0])
      @writer = File.open(ARGV[1], "w")
      read_message 
    end
  end
  
  def read_message
    convert_from_braile_to_english
    write_to_file
  end

  def convert_from_braile_to_english
    @input_message.each_slice(3) do |line|
      line_one = line[0].split("")
      line_two = line[1].split("")
      line_three = line[2].split("")
      line_one.each_slice(2).with_index do |char, i|
        braille_char = char + line_two[i*2..i*2+1] + line_three[i*2..i*2+1]
        @english_message << @alphabet.braille_english[braille_char.join("")]
      end
    end
  end

  def write_to_file
    @english_message = @english_message.compact
    @writer.write @english_message.join
    puts "Created #{ARGV[1]} containing #{@english_message.length} characters"
  end
end

unless ARGV[0].nil?
  NightReader.new
end