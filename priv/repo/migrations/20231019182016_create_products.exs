defmodule InventorySystem.Repo.Migrations.CreateProducts do
  use Ecto.Migration

  def change do
    create table(:products) do
      add :desciption, :text
      add :price, :float
      add :amount, :integer
      add :reception_id, references(:receptions, on_delete: :delete_all)
      add :inventory_id, references(:inventories, on_delete: :delete_all)
      timestamps()
    end
  end
end
