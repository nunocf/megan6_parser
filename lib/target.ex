defmodule Target do
  defstruct id: nil, length: nil, score: %Score{}, identity: %Identity{}, frame: nil, pass: nil

  def to_row(%Target{id: id, identity: identity}, query_id, criteria) do
    criteria_eval = if Identity.pass?(identity, criteria), do: "YES", else: "NO"
    [query_id, id, identity.total, criteria_eval]
  end
end
