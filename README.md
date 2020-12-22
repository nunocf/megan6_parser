# Megan6Parser

This is a small parser to read MEGAN6 output files.
After obtaining a meaningful structure, work is being done to manipulate and generate desired outputs.

## Installation

```elixir
mix deps.get
```

## Running the parser

```elixir
mix run ./tasks/parse.exs <input_file::string> <criteria::number> <db_file::string> <output_file::string>
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/oli_parser](https://hexdocs.pm/oli_parser).
