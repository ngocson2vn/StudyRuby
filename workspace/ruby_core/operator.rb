#!/usr/bin/ruby

str = "a string"

str ||= "new string"
puts str

str = str || "new string"
puts str

name ||= "Son"
puts name

title = title || "Ruby Programming"
puts title
