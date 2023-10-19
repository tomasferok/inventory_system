defmodule InventorySystem.Repo.Migrations.CreateInventories do
  use Ecto.Migration

  def change do
    create table(:inventories) do

      timestamps()
    end
  end
end
