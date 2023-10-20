defmodule InventorySystem.Products.Product do
  use Ecto.Schema
  import Ecto.Changeset

  schema "products" do
    field :description, :string
    field :amount, :integer
    field :price, :float
    field :reception_id, :integer
    timestamps()
  end

  @doc false
  def changeset(product, attrs) do
    product
    |> cast(attrs, [:description, :amount, :price, :reception_id])
    |> validate_required([:description, :amount, :price, :reception_id])
  end
end
