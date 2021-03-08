class Translator
    attr_reader :message,
                :translation,
                :alphabet

    def initialize(message, translation)
        @message = message
        @translation = translation
        @alphabet = Alphabet.new
    end

    def cli_message
     puts "Created #{ARGV[1]} containing #{@message.length} characters"
    end

end