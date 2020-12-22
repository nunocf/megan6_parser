case System.argv() do
  x when length(x) < 3 -> IO.puts("Error: insufficient number of arguments.")
  [file, criteria, output_file | _] ->
    case Integer.parse(criteria) do
      {c, _} -> Processor.run(file, c, output_file)
      :error -> IO.puts("Criteria must be a number.")
    end

end
