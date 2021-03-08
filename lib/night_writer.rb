class NightWriter
  attr_reader :original_message,
              :translated_message,
              :english_braille

  def initialize
    @original_message =  File.open(ARGV[0]).read
    @translated_message = []
         @english_braille = {
      "a" => ["0.", "..", ".."],
      "b" => ["0.", "0.", ".."],
      "c" => ["00", "..", ".."],
      "d" => ["00", ".0", ".."],
      "e" => ["0.", ".0", ".."],
      "f" => ["00", "0.", ".."],
      "g" => ["00", "00", ".."],
      "h" => ["0.", "00", ".."],
      "i" => [".0", "0.", ".."],
      "j" => [".0", "00", ".."],
      "k" => ["0.", "..", "0."],
      "l" => ["0.", "0.", "0."],
      "m" => ["00", "..", "0."],
      "n" => ["00", ".0", "0."],
      "o" => ["0.", ".0", "0."],
      "p" => ["00", "0.", "0."],
      "q" => ["00", "00", "0."],
      "r" => ["0.", "00", "0."],
      "s" => [".0", "0.", "0."],
      "t" => [".0", "00", "0."],
      "u" => ["0.", "..", "00"],
      "v" => ["0.", "0.", "00"],
      "w" => [".0", "00", ".0"],
      "x" => ["00", "..", "00"],
      "y" => ["00", ".0", "00"],
      "z" => ["0.", ".0", "00"],
      " " => ["..", "..", ".."],
      "." => ["..", "00", ".0"],
      "," => ["..", "0.", ".."]
      }
  end


  def print_message
    file =  File.open(ARGV[0]).read
    puts file
    translated_text = file.english_braille
    writer = File.open(ARGV[1], "w")
    writer.write(capitalized_text)
    puts "Created #{ARGV[1]} containing #{file.length} characters"
  end

  def read_message
    @original_message.split("").each do |letter|
     @translated_message << @english_braille[letter]
    end
     writer = File.open(ARGV[1], "w")
     writer.write @translated_message
  end
end
NightWriter.new.read_message










# class NightWriter
#     attr_reader :alphabet,
#                 :translation

#     def initialize
#         # @alphabet = Alphabet.new
#         # @translation = []
#     end

    # def translate_text

    #     incoming_text = File.open(ARGV[0], "r").read
    #     puts incoming_text
    #     incoming_text.close
   
    #     translated_text = incoming_text.upcase
    #     writer = File.open(ARGV[1], "w")
    #     writer.write(translated_text)
    #     writer.close
    # end

#     def execute
#         translate_text
#     end

    # runner = NightWriter.new
    # runner.execute

    # def print_to_terminal
    #     file = File.open("message.txt").read
    #     puts file
    # end
# end



    # handle = File.open(ARGV[0], "r")

    # incoming_text = handle.read

    # puts incoming_text

    # handle.close

    # capitalized_text = incoming_text.upcase  
    # writer = File.open(ARGV[1], "w")

    # writer.write(capitalized_text)

    # writer.close