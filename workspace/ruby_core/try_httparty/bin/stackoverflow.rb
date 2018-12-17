#!/usr/bin/env ruby

require 'httparty'

headers = {}
headers['X-Finc-Locale'] = 'en_US'
options = { timeout: 0.01, headers: headers }
puts options
begin
  resp = HTTParty.get("https://api.stackexchange.com/2.2/questions?site=stackoverflow", options)
  puts resp
rescue Net::OpenTimeout, Net::ReadTimeout => ex
  puts "#{ex.message}: #{options}"
  raise
end
