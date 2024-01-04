#!/usr/bin/env ruby
# The above shebang (#!) line specifies the path to the Ruby interpreter,
# allowing the script to be executed directly from the command line.

puts ARGV[0].scan(/hbt{2,5}n/).join
# "puts" is a Ruby method for printing to the console.
# ARGV is an array that holds the command line arguments passed to the script.
# ARGV[0] retrieves the first command line argument.
# .scan(/hbt{2,5}n/) searches for occurrences of the regex pattern "hbt" followed by 2 to 5 't' characters and ending with 'n'.
# .join concatenates the matching portions into a single string and prints it.
