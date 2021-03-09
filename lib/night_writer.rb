require_relative 'alphabet'

class NightWriter
  attr_reader :input_message,
              :translated_message,
              :alphabet,
              :output_message

  def initialize
    @input_message = File.open(ARGV[0])
    @translated_message = []
    @output_message = []
    @alphabet = Alphabet.new
    @line_one = []
    @line_two = []
    @line_three = []
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
    writer = File.open(ARGV[1], "w")
    chars_written = 0
    until @line_one.length == 0
      temp_chars_written = @line_one.slice(0..79).length
      writer.write @line_one.slice!(0..79) + "\n"
      writer.write @line_two.slice!(0..79) + "\n"
      writer.write @line_three.slice!(0..79) + "\n"
      chars_written += temp_chars_written
    end
    puts "Created #{ARGV[1]} containing #{chars_written / 2} characters"
  end
end
NightWriter.new.read_message