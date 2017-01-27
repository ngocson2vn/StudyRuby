require_relative 'mod_iaas'

module Paas
	class Beanstalk
		def initialize(os, lang)
			@os = os
			@lang = lang
			@vpc = Iaas::Vpc.new("Default VPC", "Default Gateway")
		end
		
		def detail
			print "OS: #@os, Language: #@lang\n"
			@vpc.detail
		end
	end
end
