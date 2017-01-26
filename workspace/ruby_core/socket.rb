#!/usr/bin/ruby

require 'socket'

sock1 = Socket.new(Socket::AF_INET, Socket::SOCK_STREAM)
addr1 = Socket.pack_sockaddr_in(8888, '0.0.0.0')
sock1.bind(addr1)
sock1.listen(10)

#sock2 = Socket.new(Socket::AF_INET, Socket::SOCK_STREAM)
#addr2 = Socket.pack_sockaddr_in(9999, '0.0.0.0')
#sock2.bind(addr2)
#sock2.listen(10)

5.times do
	fork do
		loop do
			#readable, _, _ = IO.select([sock1, sock2])
			readable, _, _ = IO.select([sock1])

			connection, _ = readable.first.accept
			puts "[#{Process.pid}] #{connection.read}"
		  	connection.close
		end
	end
end

Process.wait
