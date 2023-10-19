#!/usr/bin/env ruby

arg = ARGV[0]

def match_capital_letters(arg)
  matches = arg.scan(/[A-Z]/).join
  puts matches
end

match_capital_letters(arg)
