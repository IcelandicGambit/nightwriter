handle = File.open(ARGV[0], "r")

incoming_text = handle.read

puts incoming_text

handle.close