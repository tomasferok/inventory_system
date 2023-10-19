defmodule InventorySystem.ReceptionControlsTest do
  use InventorySystem.DataCase

  alias InventorySystem.ReceptionControls

  describe "reception_controls" do
    alias InventorySystem.ReceptionControls.ReceptionControl

    import InventorySystem.ReceptionControlsFixtures

    @invalid_attrs %{}

    test "list_reception_controls/0 returns all reception_controls" do
      reception_control = reception_control_fixture()
      assert ReceptionControls.list_reception_controls() == [reception_control]
    end

    test "get_reception_control!/1 returns the reception_control with given id" do
      reception_control = reception_control_fixture()
      assert ReceptionControls.get_reception_control!(reception_control.id) == reception_control
    end

    test "create_reception_control/1 with valid data creates a reception_control" do
      valid_attrs = %{}

      assert {:ok, %ReceptionControl{} = reception_control} = ReceptionControls.create_reception_control(valid_attrs)
    end

    test "create_reception_control/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = ReceptionControls.create_reception_control(@invalid_attrs)
    end

    test "update_reception_control/2 with valid data updates the reception_control" do
      reception_control = reception_control_fixture()
      update_attrs = %{}

      assert {:ok, %ReceptionControl{} = reception_control} = ReceptionControls.update_reception_control(reception_control, update_attrs)
    end

    test "update_reception_control/2 with invalid data returns error changeset" do
      reception_control = reception_control_fixture()
      assert {:error, %Ecto.Changeset{}} = ReceptionControls.update_reception_control(reception_control, @invalid_attrs)
      assert reception_control == ReceptionControls.get_reception_control!(reception_control.id)
    end

    test "delete_reception_control/1 deletes the reception_control" do
      reception_control = reception_control_fixture()
      assert {:ok, %ReceptionControl{}} = ReceptionControls.delete_reception_control(reception_control)
      assert_raise Ecto.NoResultsError, fn -> ReceptionControls.get_reception_control!(reception_control.id) end
    end

    test "change_reception_control/1 returns a reception_control changeset" do
      reception_control = reception_control_fixture()
      assert %Ecto.Changeset{} = ReceptionControls.change_reception_control(reception_control)
    end
  end
end
