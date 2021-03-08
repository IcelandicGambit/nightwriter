class NightWriter
  def print_message
    file =  File.open(ARGV[0]).read
    puts file
    capitalized_text = file.upcase
    writer = File.open(ARGV[1], "w")
    writer.write(capitalized_text)
    puts "Created #{ARGV[1]} containing #{file.length} characters"
  end
end
NightWriter.new.print_message








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