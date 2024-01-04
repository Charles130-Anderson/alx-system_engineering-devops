#!/usr/bin/env ruby

# Check if an argument is provided
if ARGV.empty?
  puts "Usage: #{$PROGRAM_NAME} 'log_entry'"
  exit 1
end

# Extracting relevant information using regular expressions
log_entry = ARGV[0]

sender = log_entry[/from:([\w+\-]+|\+\d+)/, 1]
receiver = log_entry[/to:([\w+\-]+|\+\d+)/, 1]
flags = log_entry[/flags:([^\]]+)/, 1]

# Output the formatted result
puts "#{sender},#{receiver},#{flags}"
