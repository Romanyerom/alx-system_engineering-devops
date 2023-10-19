#!/usr/bin/env ruby

def extract_info(log_line)
  sender = log_line.scan(/\[from:([^\]]+)\]/).flatten.first
  receiver = log_line.scan(/\[to:([^\]]+)\]/).flatten.first
  flags = log_line.scan(/\[flags:([^]]+)\]/).flatten.first
  "#{sender},#{receiver},#{flags}"
end

log_line = ARGV[0]
puts extract_info(log_line)
