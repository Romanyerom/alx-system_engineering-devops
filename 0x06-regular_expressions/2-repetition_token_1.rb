#!/usr/bin/env ruby

arg = ARGV[0]

def match_school(arg)
  if arg.match(/School/)
    puts arg.match(/School/)[0]
  else
    puts ""
  end
end

match_school(arg)
