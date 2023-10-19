#!/usr/bin/env ruby

arg = ARGV[0]

def match_school(arg)
  if arg.match(/School/)
     modified_string = arg.scan(/School/).join
    puts modified_string
  else
    puts ""
  end
end

match_school(arg)
