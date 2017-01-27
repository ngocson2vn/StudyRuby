require_relative 'mod_saas'

sv = Saas::Datadog.new
sv.detail
puts

platf = Paas::Beanstalk.new("Cent OS", "Golang")
platf.detail
puts

infra = Iaas::Vpc.new("Hadoop VPC", "San Francisco")
infra.detail
