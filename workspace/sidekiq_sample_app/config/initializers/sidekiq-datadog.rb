Sidekiq.configure_server do |config|
  config.server_middleware do |chain|
    chain.add Sidekiq::Middleware::Server::Datadog
  end
end
