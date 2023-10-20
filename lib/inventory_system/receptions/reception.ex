defmodule InventorySystem.Receptions.Reception do
  use Ecto.Schema
  import Ecto.Changeset

  schema "receptions" do
    field :nro, :integer
    has_many(:products, InventorySystem.Products.Product)
    timestamps()
  end

  @doc false
  def changeset(reception, attrs) do
    reception
    |> cast(attrs, [:nro])
    |> validate_required([:nro])
  end
end
