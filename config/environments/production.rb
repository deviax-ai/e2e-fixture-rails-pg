require "active_support/core_ext/integer/time"

Rails.application.configure do
  config.cache_classes = true
  config.eager_load = true
  config.consider_all_requests_local = false

  config.public_file_server.enabled = ENV["RAILS_SERVE_STATIC_FILES"].present?

  config.log_level = ENV.fetch("RAILS_LOG_LEVEL", "info")
  config.log_tags = [:request_id]
  config.logger = ActiveSupport::Logger.new($stdout)
    .tap { |l| l.formatter = ::Logger::Formatter.new }
    .then { |l| ActiveSupport::TaggedLogging.new(l) }

  config.i18n.fallbacks = true

  # Don't dump schema after successful migrations.
  config.active_record.dump_schema_after_migration = false
end
