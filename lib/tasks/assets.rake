# API-only Rails has no asset pipeline (no sprockets/propshaft).
# Most production Dockerfiles still call `rails assets:precompile`,
# so define a no-op so the build doesn't fail.
namespace :assets do
  desc "Stub for API-only apps — no assets to compile"
  task precompile: :environment do
    puts "API-only app, no assets to precompile"
  end

  desc "Stub clean for API-only apps"
  task clean: :environment do
    puts "API-only app, nothing to clean"
  end
end
