defmodule InventorySystem.Products.QueryFilters.ProductFilters do
  import Ecto.Query, warn: false
  alias InventorySystem.Products.Product
  alias InventorySystem.Products

  def filter_by_receptionid(idrecep) do
    query =
      from(p in Product,
        where: p.reception_id == ^idrecep,
        select: p
      )

    Products.list_products(query)
  end
end
