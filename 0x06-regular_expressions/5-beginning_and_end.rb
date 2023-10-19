#!/usr/bin/env ruby

arg = ARGV[0]

def match_beginning_and_end(arg)
  if arg.match(/^h.n$/)
    puts arg
  else
    puts ""
  end
end

match_beginning_and_end(arg)
