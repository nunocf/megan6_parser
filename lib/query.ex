defmodule Query do
  defstruct id: nil, targets: [], criteria: nil

  def to_row(%Query{criteria: criteria, targets: targets, id: id}) do
    Enum.map(targets, &Target.to_row(&1, id, criteria))
  end

  def headers() do
    ["Query ID", "Target ID", "Identity", "PASS"]
  end
end
