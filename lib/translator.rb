class Translator
    attr_reader :message,
                :translation,
                :alphabet

    def initialize(message, translation)
        @message = message
        @translation = translation
    end

end