Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins ENV['CLIENT_URL'] || "http://localhost:8080"

    resource "/graphql",
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end
