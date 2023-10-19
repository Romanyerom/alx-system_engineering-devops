#!/usr/bin/env ruby

arg = ARGV[0]

def match_phone_number(arg)
  if arg.match(/\A\d{10}\z/)
    puts arg
  else
    puts ""
  end
end

match_phone_number(arg)
