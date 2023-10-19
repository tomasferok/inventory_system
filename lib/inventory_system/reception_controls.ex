defmodule InventorySystem.ReceptionControls do
  @moduledoc """
  The ReceptionControls context.
  """

  import Ecto.Query, warn: false
  alias InventorySystem.Repo

  alias InventorySystem.ReceptionControls.ReceptionControl

  @doc """
  Returns the list of reception_controls.

  ## Examples

      iex> list_reception_controls()
      [%ReceptionControl{}, ...]

  """
  def list_reception_controls do
    Repo.all(ReceptionControl)
  end

  @doc """
  Gets a single reception_control.

  Raises `Ecto.NoResultsError` if the Reception control does not exist.

  ## Examples

      iex> get_reception_control!(123)
      %ReceptionControl{}

      iex> get_reception_control!(456)
      ** (Ecto.NoResultsError)

  """
  def get_reception_control!(id), do: Repo.get!(ReceptionControl, id)

  @doc """
  Creates a reception_control.

  ## Examples

      iex> create_reception_control(%{field: value})
      {:ok, %ReceptionControl{}}

      iex> create_reception_control(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_reception_control(attrs \\ %{}) do
    %ReceptionControl{}
    |> ReceptionControl.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a reception_control.

  ## Examples

      iex> update_reception_control(reception_control, %{field: new_value})
      {:ok, %ReceptionControl{}}

      iex> update_reception_control(reception_control, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_reception_control(%ReceptionControl{} = reception_control, attrs) do
    reception_control
    |> ReceptionControl.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a reception_control.

  ## Examples

      iex> delete_reception_control(reception_control)
      {:ok, %ReceptionControl{}}

      iex> delete_reception_control(reception_control)
      {:error, %Ecto.Changeset{}}

  """
  def delete_reception_control(%ReceptionControl{} = reception_control) do
    Repo.delete(reception_control)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking reception_control changes.

  ## Examples

      iex> change_reception_control(reception_control)
      %Ecto.Changeset{data: %ReceptionControl{}}

  """
  def change_reception_control(%ReceptionControl{} = reception_control, attrs \\ %{}) do
    ReceptionControl.changeset(reception_control, attrs)
  end
end
