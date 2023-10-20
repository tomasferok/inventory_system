defmodule InventorySystemWeb.ProductJSON do
  alias InventorySystem.Products.Product

  @doc """
  Renders a list of products.
  """
  def index(%{products: products}) do
    %{data: for(product <- products, do: data(product))}
  end

  @doc """
  Renders a single product.
  """
  def show(%{product: product}) do
    %{data: data(product)}
  end

  defp data(%Product{} = product) do
    %{
      id: product.id,
      description: product.description,
      amount: product.amount,
      price: product.price
    }
  end
end
