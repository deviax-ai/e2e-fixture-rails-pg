max_threads_count = ENV.fetch("RAILS_MAX_THREADS") { 5 }
min_threads_count = ENV.fetch("RAILS_MIN_THREADS") { max_threads_count }
threads min_threads_count, max_threads_count

worker_timeout 3600 if ENV.fetch("RAILS_ENV", "development") == "development"

port ENV.fetch("PORT") { 3000 }
environment ENV.fetch("RAILS_ENV") { "development" }
# Only write a pidfile if explicitly asked (the runtime image's tmp/
# may not exist or may not be writable by the non-root user).
pidfile ENV["PIDFILE"] if ENV["PIDFILE"]

plugin :tmp_restart
