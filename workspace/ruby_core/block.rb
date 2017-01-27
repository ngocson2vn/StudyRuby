#!/usr/bin/ruby

#def my_method
#	puts "reached the top"
#	yield
#	puts "reach the bottom"
#end
#
#my_method do
#	puts "reached yield"
#end

class Person
	def initialize(name, age)
		@name = name
		@age = age
	end

	def detail
		print "Name: #{@name}, Age: #{@age}\n"
	end
end


$p = nil

def hire
	$p ||= begin
		puts "Hire a new Person"
		Person.new("Son", 31)
	end
end

puts hire.object_id
puts $p.object_id







