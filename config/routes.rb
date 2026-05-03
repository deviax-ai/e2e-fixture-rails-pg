Rails.application.routes.draw do
  root to: "posts#index"
  get  "/healthz", to: "posts#healthz"
  get  "/posts",   to: "posts#list"
end
