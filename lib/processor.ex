defmodule Processor do
  def run(filepath, criteria, output_file) do
    filepath
    |> Parser.parse(criteria)
    |> Writer.write(output_file)
  end
end
