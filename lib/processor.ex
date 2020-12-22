defmodule Processor do
  def run(%{
        filepath: filepath,
        criteria: criteria,
        db_filepath: db_filepath,
        output_filepath: output_filepath
      }) do
    db_map = DB.parse_db(db_filepath)

    filepath
    |> Parser.parse(criteria, db_map)
    |> Writer.write(output_filepath)
  end
end
