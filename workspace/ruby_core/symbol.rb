#!/usr/bin/ruby

# puts :custname
# puts :custname.object_id
# puts :custname.to_s
# puts :custname.class

# name = :custname
# puts name.object_id

def check(first, last, age)
	f = first
	l = last
	a = age
	puts f.class
	puts l.class
	puts a.class
	puts f.to_s
	puts "#{first} #{last} is #{age} years old."
end

check :Son, :Nguyen, 30
