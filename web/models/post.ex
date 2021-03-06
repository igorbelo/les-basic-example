defmodule Blog.Post do
  use Blog.Web, :model

  schema "posts" do
    field :title, :string
    field :body, :string
    belongs_to :author, Blog.User

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :body, :author_id])
    |> validate_required([:title, :body, :author_id])
  end
end
