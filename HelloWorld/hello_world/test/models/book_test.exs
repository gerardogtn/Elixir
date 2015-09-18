defmodule HelloWorld.BookTest do
  use HelloWorld.ModelCase

  alias HelloWorld.Book

  @valid_attrs %{author: "some content", title: "some content", year: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Book.changeset(%Book{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Book.changeset(%Book{}, @invalid_attrs)
    refute changeset.valid?
  end
end
