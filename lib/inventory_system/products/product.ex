defmodule InventorySystem.Products.Product do
  use Ecto.Schema
  import Ecto.Changeset

  schema "products" do
    field :desciption, :string
    field :price, :float

    timestamps()
  end

  @doc false
  def changeset(product, attrs) do
    product
    |> cast(attrs, [:desciption, :price])
    |> validate_required([:desciption, :price])
  end
end
