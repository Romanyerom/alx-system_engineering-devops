#!/usr/bin/env ruby

arg = ARGV[0]

def match_pattern(arg)
  if arg.match(/hb*t+n*/)
    puts arg
  else
    puts ""
  end
end

match_pattern(arg)
