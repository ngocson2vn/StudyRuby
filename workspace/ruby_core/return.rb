#!/usr/bin/env ruby

module Clientoken
    def self.get_application_token(application_name)
        if application_name == 'requl_mobile'
            service = Struct.new(:application_token).new
            service.application_token = 'c46d2c3736f8906d865882d8d831ac3b'
        end
        service.application_token if service
    end
end

token = Clientoken.get_application_token('requl_mobile')
puts token.class

token = Clientoken.get_application_token('wellness_ai')
puts token.class
if token.nil?
    puts 'token is nil'
end
