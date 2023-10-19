defmodule InventorySystem.Repo.Migrations.CreateReceptionControls do
  use Ecto.Migration

  def change do
    create table(:reception_controls) do
      add :reception_id, references(:receptions, on_delete: :delete_all)
      timestamps()
    end
  end
end
