if ENV['CI_EXECUTION']
  puts("CI is executing")
elsif ENV['RAILS_ENV']
  puts("App is running")
else
  puts("Nothing happens")
end
