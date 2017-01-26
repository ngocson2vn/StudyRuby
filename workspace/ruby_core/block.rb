#!/usr/bin/ruby

def my_method
	puts "reached the top"
	yield
	puts "reach the bottom"
end

my_method do
	puts "reached yield"
end
