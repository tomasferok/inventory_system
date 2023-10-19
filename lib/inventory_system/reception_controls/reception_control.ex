defmodule InventorySystem.ReceptionControls.ReceptionControl do
  use Ecto.Schema
  import Ecto.Changeset

  schema "reception_controls" do
    belongs_to :author, InventorySystem.Receptions.Reception

    timestamps()
  end

  @doc false
  def changeset(reception_control, attrs) do
    reception_control
    |> cast(attrs, [])
    |> validate_required([])
  end
end
