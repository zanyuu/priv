defmodule Taskmanager.Repo.Migrations.Category do
  use Ecto.Migration

  def change do
    create table(:category) do
      add :cat_id, :integer, primary_key: true, auto_increment: true
      add :category, :string
      timestamps()
    end

    create(unique_index(:category, [:category]))
  end
end
