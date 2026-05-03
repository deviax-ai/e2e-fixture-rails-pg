class PostsController < ApplicationController
  def index
    render json: { service: "rails-blog", count: Post.count }
  end

  def healthz
    ActiveRecord::Base.connection.execute("SELECT 1")
    render plain: "ok", status: :ok
  rescue ActiveRecord::ActiveRecordError
    render plain: "db-down", status: :service_unavailable
  end

  def list
    render json: {
      posts: Post.order(id: :desc).limit(50).map { |p|
        { id: p.id, title: p.title, body: p.body, created_at: p.created_at }
      },
    }
  end
end
