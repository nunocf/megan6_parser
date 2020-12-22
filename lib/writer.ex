defmodule Writer do
  def write(stream, output_file) do
    file = File.open!(output_file, [:write, :utf8])

    [Query.headers()]
    |> Stream.map(& &1)
    |> CSV.encode()
    |> Enum.each(&IO.write(file, &1))

    stream
    |> Stream.flat_map(&Query.to_row/1)
    |> CSV.encode()
    |> Enum.each(&IO.write(file, &1))

    File.close(file)
  end
end
