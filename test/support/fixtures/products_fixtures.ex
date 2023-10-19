defmodule InventorySystem.ProductsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `InventorySystem.Products` context.
  """

  @doc """
  Generate a product.
  """
  def product_fixture(attrs \\ %{}) do
    {:ok, product} =
      attrs
      |> Enum.into(%{
        desciption: "some desciption",
        price: 120.5
      })
      |> InventorySystem.Products.create_product()

    product
  end
end
