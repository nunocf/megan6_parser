case System.argv() do
  x when length(x) < 4 -> IO.puts("Error: insufficient number of arguments.")
  [filepath, criteria_string, db_filepath, output_filepath | _] ->
    case Integer.parse(criteria_string) do
      {criteria, _} ->
        Processor.run(%{
          filepath: filepath,
          criteria: criteria,
          db_filepath: db_filepath,
          output_filepath: output_filepath
          }
        )

      :error -> IO.puts("Criteria must be a number.")
    end

end
