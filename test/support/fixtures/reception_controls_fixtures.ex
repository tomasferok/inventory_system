defmodule InventorySystem.ReceptionControlsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `InventorySystem.ReceptionControls` context.
  """

  @doc """
  Generate a reception_control.
  """
  def reception_control_fixture(attrs \\ %{}) do
    {:ok, reception_control} =
      attrs
      |> Enum.into(%{

      })
      |> InventorySystem.ReceptionControls.create_reception_control()

    reception_control
  end
end
