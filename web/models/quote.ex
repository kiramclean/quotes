defmodule Quotes.Quote do
  use Quotes.Web, :model

  schema "quotes" do
    field :quote, :string
    field :author, :string
    field :source, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:quote, :author, :source])
    |> validate_required([:quote, :author, :source])
  end
end
