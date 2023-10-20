defmodule InventorySystem.Repo.Migrations.CreateReceptions do
  use Ecto.Migration

  def change do
    create table(:receptions) do
      add :nro, :integer

      timestamps()
    end
  end
end
