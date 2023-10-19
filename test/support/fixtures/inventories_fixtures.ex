defmodule InventorySystem.InventoriesFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `InventorySystem.Inventories` context.
  """

  @doc """
  Generate a inventory.
  """
  def inventory_fixture(attrs \\ %{}) do
    {:ok, inventory} =
      attrs
      |> Enum.into(%{

      })
      |> InventorySystem.Inventories.create_inventory()

    inventory
  end
end
