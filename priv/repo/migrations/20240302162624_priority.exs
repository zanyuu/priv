defmodule Taskmanager.Repo.Migrations.Priority do
  use Ecto.Migration

  def change do
    create table(:priority) do
      add :prio_id, :uuid, primary_key: true, default: fragment("uuid_generate_v4()")
      add :prio_name, :string
      timestamps()
    end

    create(unique_index(:priority, [:prio_name]))
  end
end
