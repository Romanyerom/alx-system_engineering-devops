#!/usr/bin/env ruby

arg = ARGV[0]

def match_school(arg)
  if arg.match(/School/)
    puts "School"
  else
    puts ""
  end
end

match_school(arg)
