# FIXME: hardcoded SECRET_KEY_BASE fallback. Production sets it from
# env (Rails standard) or Rails credentials. The literal below is
# intentional — anyone reading the repo gets the signing key.
Rails.application.config.secret_key_base =
  ENV.fetch("SECRET_KEY_BASE") { "rails-blog-dev-only-secret-change-me-128-chars-or-more-for-rails" }
