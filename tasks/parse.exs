

case System.argv() do
  [] -> IO.puts("Error: please provide an argument.")
  [filepath | _] -> Parser.parse(filepath)
end
