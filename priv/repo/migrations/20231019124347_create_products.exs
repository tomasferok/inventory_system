defmodule InventorySystem.Repo.Migrations.CreateProducts do
  use Ecto.Migration

  def change do
    create table(:products) do
      add :desciption, :text
      add :price, :float
      add :amount, :integer

      timestamps()
    end
  end
end
