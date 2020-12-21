defmodule ParserTest do
  use ExUnit.Case
  doctest Parser

  test "parses a file with a single target correctly" do
    assert Parser.parse("./test/small_test_file.txt") == [
             %Query{
               id: "M00722:851:000000000-CWMK5:1:2111:21828:16416_1:N:0:AAGAGGCA+CTCTCTAT",
               targets: [
                 %Target{
                   frame: -2,
                   id: "QBL75482.1",
                   identity: %Identity{
                     gaps: "0/83 (0%)",
                     positives: "83/83 (100%)",
                     total: "83/83 (100%)"
                   },
                   length: 1964,
                   score: %Score{expect: "6e-42", score: "179 bits (455)"}
                 }
               ]
             }
           ]
  end

  test "parses a file with multiple targets correctly" do
    assert Parser.parse("./test/test_file.txt") == [
             %Query{
               id: "M00722:851:000000000-CWMK5:1:2111:21828:16416_1:N:0:AAGAGGCA+CTCTCTAT",
               targets: [
                 %Target{
                   frame: -2,
                   id: "QBL75482.1",
                   identity: %Identity{
                     gaps: "0/83 (0%)",
                     positives: "83/83 (100%)",
                     total: "83/83 (100%)"
                   },
                   length: 1964,
                   score: %Score{expect: "6e-42", score: "179 bits (455)"}
                 },
                 %Target{
                   frame: -2,
                   id: "QBL75488.1",
                   identity: %Identity{
                     gaps: "0/83 (0%)",
                     positives: "83/83 (100%)",
                     total: "83/83 (100%)"
                   },
                   length: 1964,
                   score: %Score{expect: "6e-42", score: "179 bits (455)"}
                 }
               ]
             },
             %Query{
               id: "M00722:851:000000000-CWMK5:1:2111:21828:16416_1:N:0:AAGAGGCA+CTCTCTAT",
               targets: [
                 %Target{
                   frame: -2,
                   id: "QBL75482.1",
                   identity: %Identity{
                     gaps: "0/83 (0%)",
                     positives: "83/83 (100%)",
                     total: "83/83 (100%)"
                   },
                   length: 1964,
                   score: %Score{expect: "6e-42", score: "179 bits (455)"}
                 },
                 %Target{
                   frame: -2,
                   id: "QBL75488.1",
                   identity: %Identity{
                     gaps: "0/83 (0%)",
                     positives: "83/83 (100%)",
                     total: "83/83 (100%)"
                   },
                   length: 1964,
                   score: %Score{expect: "6e-42", score: "179 bits (455)"}
                 }
               ]
             }
           ]
  end
end
