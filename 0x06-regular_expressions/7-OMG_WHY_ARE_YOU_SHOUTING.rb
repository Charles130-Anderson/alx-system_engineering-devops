#!/usr/bin/env ruby
# The above shebang (#!) line specifies the path to the Ruby interpreter,
# allowing the script to be executed directly from the command line.

puts ARGV[0].scan(/[A-Z]+/).join
# "puts" is a Ruby method for printing to the console.
# ARGV is an array that holds the command line arguments passed to the script.
# ARGV[0] retrieves the first command line argument.
# .scan(/[A-Z]+/) searches for occurrences of the regex pattern "[A-Z]+" in the input string.
# The pattern matches one or more uppercase letters in the range A to Z.
# .join concatenates the matching portions into a single string and prints it.
