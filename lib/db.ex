defmodule DB do
  def parse_db(db_filepath) do
    db_filepath
    |> File.stream!()
    |> Stream.filter(&String.starts_with?(&1, ">"))
    |> Stream.map(fn ">" <> s ->
      [id | rest] =
        s
        |> String.trim()
        |> String.split()

      {id, Enum.join(rest, " ")}
    end)
    |> Map.new()
  end
end
