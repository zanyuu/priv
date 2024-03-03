defmodule Taskmanager.Repo.Migrations.Task do
  use Ecto.Migration

  def change do
    create table(:task) do
      add :task_id, :integer, primary_key: true, auto_increment: true
      add :task_name, :string
      add :category_id, references(:category, column: :cat_id)
      add :date_time, :datetime
      add :priority_id, references(:priority, column: :prio_id)
      timestamps()
    end

    create(index(:task, [:category_id]))
    create(index(:task, [:priority_id]))
  end
end
