#!/usr/bin/ruby

read_end, write_end = IO.pipe

fork do
	read_end.close

	write_end.write('Hello from your child!')
	write_end.close
	
	puts "PID: #{Process.pid}"
	puts "PPID: #{Process.ppid}"

	while true do
	end
end


puts "[Parent] PID: #{Process.pid}"
write_end.close

Process.wait

message = read_end.read
read_end.close

puts "Received from child: #{message}"
