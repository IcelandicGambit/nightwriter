require_relative 'alphabet'

class NightWriter
  attr_accessor :input_message,
              :translated_message,
              :alphabet,
              :output_message,
              :writer

  def initialize
    @translated_message = []
    @output_message = []
    @alphabet = Alphabet.new
    @line_one = []
    @line_two = []
    @line_three = []
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
    read_from_file
    concatenate_lines
    write_to_file
  end

  def read_from_file
    @input_message.each do |line|
      line.split("").each do |char|
        unless char == "\n"
          braille = @alphabet.english_braille[char]
          @line_one << braille[0]
          @line_two << braille[1]
          @line_three << braille[2]
        end
      end
    end
  end

  def concatenate_lines
    @line_one = @line_one.join
    @line_two = @line_two.join
    @line_three = @line_three.join
  end

  def write_to_file
    chars_written = 0
    until @line_one.length == 0
      temp_chars_written = @line_one.slice(0..79).length
      @writer.write @line_one.slice!(0..79) + "\n"
      @writer.write @line_two.slice!(0..79) + "\n"
      @writer.write @line_three.slice!(0..79) + "\n"
      chars_written += temp_chars_written
    end
    puts "Created #{ARGV[1]} containing #{chars_written / 2} characters"
  end
end

unless ARGV[0].nil?
  NightWriter.new
end