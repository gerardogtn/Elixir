defmodule HelloWorld.Book do
  use HelloWorld.Web, :model

  schema "books" do
    field :title, :string
    field :author, :string
    field :year, :integer

    timestamps
  end

  @required_fields ~w(title author year)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
