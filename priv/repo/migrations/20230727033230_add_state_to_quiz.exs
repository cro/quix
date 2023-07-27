defmodule Quix.Repo.Migrations.AddStateToQuiz do
  @moduledoc """
  Updates resources based on their most recent snapshots.

  This file was autogenerated with `mix ash_postgres.generate_migrations`
  """

  use Ecto.Migration

  def up do
    alter table(:quizzes) do
      add :state, :text
    end

    alter table(:questions) do
      add :correct_option, :text
    end
  end

  def down do
    alter table(:questions) do
      remove :correct_option
    end

    alter table(:quizzes) do
      remove :state
    end
  end
end