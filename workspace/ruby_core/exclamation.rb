#!/usr/bin/ruby

foo = "A STRING"
foo2 = foo.downcase
print "foo: ", foo, "\n"
print "foo2: ", foo2, "\n"

puts
print "foo: ", foo, "\n"
foo.downcase!
print "foo: ", foo, "\n"

