# rails-blog

Rails 7.2 (API mode) + Postgres blog. Phase 2 fixture for the
[Deviax](https://github.com/deviax-ai/aura_deploy) e2e matrix —
exercises the Rails + managed-DB + migrations path.

## Run locally

```sh
bundle install
DATABASE_URL=postgres://postgres:postgres@localhost:5432/blog \
  bin/rails db:migrate
DATABASE_URL=postgres://postgres:postgres@localhost:5432/blog \
  RAILS_ENV=production bundle exec puma -p 3000
```

## Routes

- `GET /` → `{service, count}`
- `GET /healthz` → 200 ok / 503 db-down
- `GET /posts` → list

## Seeded vibe-problems

| File | Line | What's wrong |
|---|---|---|
| `config/initializers/secret_key_base.rb` | 5 | Hardcoded `secret_key_base` fallback (real prod uses Rails credentials or env) |

`DATABASE_URL` is correctly env-aware. Migrations via `rails db:migrate`.

## License

MIT.
