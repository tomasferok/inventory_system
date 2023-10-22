defmodule InventorySystemWeb.Router do
  alias InventorySystemWeb.ProductoController
  use InventorySystemWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, html: {InventorySystemWeb.Layouts, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", InventorySystemWeb do
    pipe_through :browser

    get "/", PageController, :home
  end

  scope "/api", InventorySystemWeb do
    pipe_through :api

    get "/products", ProductController, :index
    get "/products/:id", ProductController, :show
    post "/products", ProductController, :create
    put "/products/:id", ProductController, :update
    delete "/products/:id", ProductController, :delete
    get "/products/filterecep/:reception_id", ProductController, :get_product_by_receptionid
    get "/products/orderbyprice", ProductController, :order_product_by_price

    get "/receptions", ReceptionController, :index
    get "/receptions/:id", ReceptionController, :show
    post "/receptions", ReceptionController, :create
  end

  # Other scopes may use custom stacks.
  # scope "/api", InventorySystemWeb do
  #   pipe_through :api
  # end

  # Enable LiveDashboard and Swoosh mailbox preview in development
  if Application.compile_env(:inventory_system, :dev_routes) do
    # If you want to use the LiveDashboard in production, you should put
    # it behind authentication and allow only admins to access it.
    # If your application does not have an admins-only section yet,
    # you can use Plug.BasicAuth to set up some basic authentication
    # as long as you are also using SSL (which you should anyway).
    import Phoenix.LiveDashboard.Router

    scope "/dev" do
      pipe_through :browser

      live_dashboard "/dashboard", metrics: InventorySystemWeb.Telemetry
      forward "/mailbox", Plug.Swoosh.MailboxPreview
    end
  end
end
