#!/usr/bin/env ruby
# (Disclaimer: I'm not a regex expert)

puts ARGV[0].scan(/hbt{2,5}n/).join
