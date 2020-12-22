defmodule Identity do
  defstruct total: nil, positives: nil, gaps: nil

  def pass?(%Identity{total: total}, criteria) when total < criteria, do: false
  def pass?(_, _), do: true
end
