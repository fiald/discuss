defmodule Discuss.Topic do
  use Ecto.Schema
  import Ecto.Changeset

  schema "topics" do
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(app_topics, attrs) do
    app_topics
    |> cast(attrs, [:title])
    |> validate_required([:title])
  end
end
