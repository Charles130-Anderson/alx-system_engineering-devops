#!/usr/bin/env ruby
# The above shebang (#!) line specifies the path to the Ruby interpreter,
# allowing the script to be executed directly from the command line.

# ARGV is an array that holds the command line arguments passed to the script.
# ARGV[0] retrieves the first command line argument.
# .scan(/School/) searches for occurrences of the regex pattern "School" in the input string.
# .join concatenates the matching portions into a single string and prints it.
puts ARGV[0].scan(/School/).join
