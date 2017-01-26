#!/usr/bin/ruby

child_pid = fork do
	puts "[child] child_pid: #{child_pid}"
	puts "[child] Process ID: #{Process.pid}"
	puts "[child] Parent Process ID: #{Process.ppid}"
end

Process.wait(child_pid)

puts "[parent] child_pid: #{child_pid}"
puts "[parent] Process ID: #{Process.pid}"
