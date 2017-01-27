require_relative 'mod_paas'

module Saas
	class Datadog
		def initialize()
			@p = Paas::Beanstalk.new("Ubuntu", "Ruby")
		end

		def detail
			print "Datadog:\n"
			@p.detail
		end
	end
end
