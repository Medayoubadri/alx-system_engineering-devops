#!/usr/bin/env ruby
# ( TextMe is a messenger app that I use to communicate with my family )

log_entry = ARGV[0]
sender = log_entry.scan(/\[from:(.*?)\]/).flatten.first
receiver = log_entry.scan(/\[to:(.*?)\]/).flatten.first
flags = log_entry.scan(/\[flags:(.*?)\]/).flatten.first

puts "#{sender},#{receiver},#{flags}"