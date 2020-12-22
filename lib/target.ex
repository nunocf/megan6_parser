defmodule Target do
  defstruct id: nil,
            length: nil,
            score: %Score{},
            identity: %Identity{},
            english_name: nil,
            frame: nil,
            pass: nil

  def to_row(%Target{id: id, identity: identity, english_name: english_name}, query_id, criteria) do
    criteria_eval = if Identity.pass?(identity, criteria), do: "YES", else: "NO"
    [query_id, id, english_name || "Not Found", identity.total, criteria_eval]
  end
end
