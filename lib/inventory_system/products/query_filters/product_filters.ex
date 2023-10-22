defmodule InventorySystem.Products.QueryFilters.ProductFilters do
  import Ecto.Query, warn: false
  alias InventorySystem.Products.Product
  alias InventorySystem.Repo

  def filter_by_receptionid(reception_id) do
    query =
      from(p in Product,
        where: p.reception_id == ^reception_id,
        select: p
      )

    Repo.all(query)
  end

  def order_by_price do
    query =
      from(p in Product,
      order_by: [asc: p.price],
      select: p
    )
    Repo.all(query)
  end



end
