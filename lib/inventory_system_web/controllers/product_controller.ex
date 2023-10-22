defmodule InventorySystemWeb.ProductController do
  use InventorySystemWeb, :controller

  alias InventorySystem.Products
  alias InventorySystem.Products.Product
  import InventorySystem.Products.QueryFilters.ProductFilters


  action_fallback InventorySystemWeb.FallbackController

  def index(conn, _params) do
    products = Products.list_products()
    render(conn, :index, products: products)
  end

  def get_product_by_receptionid(conn, %{"reception_id" => reception_id}) do
    products = filter_by_receptionid(reception_id)
    render(conn, :index, products: products)
  end

  def order_product_by_price(conn, _params) do
    products = order_by_price()
    render(conn, :index, products: products)
  end

  def create(conn, %{"product" => product_params}) do
    task =
      Task.async(fn ->
        Products.create_product(product_params)
      end)

    with {:ok, product} <- Task.await(task) do
      conn
      |> put_status(:created)
      |> put_resp_header("location", ~p"/api/products/#{product}")
      |> render(:show, product: product)
    end
  end

  def show(conn, %{"id" => id}) do
    product = Products.get_product!(id)
    render(conn, :show, product: product)
  end

  def update(conn, %{"id" => id, "product" => product_params}) do
    product = Products.get_product!(id)

    with {:ok, %Product{} = product} <- Products.update_product(product, product_params) do
      render(conn, :show, product: product)
    end
  end

  def delete(conn, %{"id" => id}) do
    product = Products.get_product!(id)

    with {:ok, %Product{}} <- Products.delete_product(product) do
      send_resp(conn, :no_content, "")
    end
  end
end
