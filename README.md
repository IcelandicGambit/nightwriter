
# Class NightWriter
#    Def initialize
#       # 1 - get the input out of the file
#       @messageToTranslate = File.open(<file containing message>).read # ‘message.txt’
     
#       # 2 - initialize your braille to english dictionary
#       @dictionary = Alphabet.new
      
#       #3 - translate the message
#       @translation = translateMessage

#       #4 - format translation
#       @finalTranslation = formatTranslation 

#       #5 - put formatted translation into output file
#       @outputFile = File.new(<output file name>) # ’braille.txt’
#       @outputFile.puts(@finalTranslation)
#       @outputFile.close
#    End

#    Def translateMessage
#       # break up the message into an array of individual characters
#       splitMessage = @messageToTranslate.split(“”)
      
#       translatedMessage = [] #empty array to hold resulting translation
#       #loop over splitMessage letter by letter
#       splitMessage.each do |character|
#           translatedMessage << @dictionary[charater] # look up each char in dict, add to results
#    End 

#    Def formatTranslation
#        formattedTranslation = @translation.transpose
#        formattedTranslation.map do |<thing>|
#           <thing>.join
#           <insert new line character every 40 characters>
#        end
# End

Questions to ask:
# How do I transform this from an executable into an object 
# How do I initialize my runner and not run into output/test errors
