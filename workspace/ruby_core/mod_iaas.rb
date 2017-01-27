module Iaas
	class Vpc
		def initialize(name, gateway)
			@name = name
			@gateway = gateway
		end

		def detail
			print "VPC: #@name, Gateway: #@gateway\n"
		end
	end
end
