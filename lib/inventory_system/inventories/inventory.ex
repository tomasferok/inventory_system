defmodule InventorySystem.Inventories.Inventory do
  use Ecto.Schema
  import Ecto.Changeset

  schema "inventories" do
    has_many :products, InventorySystem.Products.Product

    timestamps()
  end

  @doc false
  def changeset(inventory, attrs) do
    inventory
    |> cast(attrs, [])
    |> validate_required([])
  end
end
