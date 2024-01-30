#!/usr/bin/env ruby
# The above shebang (#!) line specifies the path to the Ruby interpreter,
# allowing the script to be executed directly from the command line.

puts ARGV[0].scan(/^[0-9]{10}$/).join
# "puts" is a Ruby method for printing to the console.
# ARGV is an array that holds the command line arguments passed to the script.
# ARGV[0] retrieves the first command line argument.
# .scan(/^[0-9]{10}$/) searches for occurrences of the regex pattern "^[0-9]{10}$" in the input string.
# The pattern matches a string that starts and ends with a digit, and the total length is exactly 10 digits.
# The "^" anchors the pattern to the start of the line, and "$" anchors it to the end.
# [0-9] matches any digit, and {10} specifies that there should be exactly 10 occurrences of the preceding pattern.
# .join concatenates the matching portions into a single string and prints it.
