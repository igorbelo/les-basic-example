defmodule Blog.PageController do
  use Blog.Web, :controller

  alias Blog.Post

  def index(conn, _params) do
    posts = Repo.all(Post)
    |> Repo.preload(:author)
    render(conn, "index.html", posts: posts)
  end
end
