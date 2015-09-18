defmodule HelloWorld.Repo.Migrations.CreateBook do
  use Ecto.Migration

  def change do
    create table(:books) do
      add :title, :string
      add :author, :string
      add :year, :integer

      timestamps
    end

  end
end
