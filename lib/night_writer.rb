class NightWriter
    test = File.open(ARGV[0], "r")
    incoming_text = handle.read
    capitalized_text = incoming_text.upcase

    writer = File.open(ARGV[1], "w")

    writer.write(capitalized_text)
    
    writer.close
end