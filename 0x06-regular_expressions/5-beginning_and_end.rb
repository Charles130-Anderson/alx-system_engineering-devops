#!/usr/bin/env ruby
# The above shebang (#!) line specifies the path to the Ruby interpreter,
# allowing the script to be executed directly from the command line.

puts ARGV[0].scan(/^h.n$/).join
# "puts" is a Ruby method for printing to the console.
# ARGV is an array that holds the command line arguments passed to the script.
# ARGV[0] retrieves the first command line argument.
# .scan(/^h.n$/) searches for occurrences of the regex pattern "^h.n$" in the input string.
# The pattern matches a string that starts with 'h', followed by any character except a newline,
# and ends with 'n'. The "^" anchors the pattern to the start of the line, and "$" anchors it to the end.
# .join concatenates the matching portions into a single string and prints it.
