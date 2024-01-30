#!/usr/bin/env ruby
# The above shebang (#!) line specifies the path to the Ruby interpreter,
# allowing the script to be executed directly from the command line.

puts ARGV[0].scan(/hb?tn/).join
# "puts" is a Ruby method for printing to the console.
# ARGV is an array that holds the command line arguments passed to the script.
# ARGV[0] retrieves the first command line argument.
# .scan(/hb?tn/) searches for occurrences of the regex pattern "hb?tn" in the input string.
# The pattern matches 'h', followed by an optional 'b', and then 'tn'.
# .join concatenates the matching portions into a single string and prints it.
