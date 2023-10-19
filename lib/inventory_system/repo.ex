defmodule InventorySystem.Repo do
  use Ecto.Repo,
    otp_app: :inventory_system,
    adapter: Ecto.Adapters.MyXQL
end
