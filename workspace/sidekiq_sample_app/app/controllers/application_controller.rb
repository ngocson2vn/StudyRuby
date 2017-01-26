require 'datadog/statsd'

# Create a statsd client instance.

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  @@statsd = Datadog::Statsd.new

  def hello
    @@statsd.increment('hello_app.web.page_views')
    render html: "hello, world!"
  end

end
