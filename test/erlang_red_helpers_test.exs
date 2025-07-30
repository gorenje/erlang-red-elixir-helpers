defmodule ErlangRedHelpersTest do
  use ExUnit.Case
  doctest ErlangRedHelpers

  ErlangRedHelpers.define_csv_parser(SemiColonSep, separator: ";", escape: "\"")

  test "earmark basic" do
    assert ErlangRedHelpers.markdown_to_html("# hello wolrd") ==
             {:ok, "<h1>\nhello wolrd</h1>\n", []}
  end

  test "nimble csv basic" do
    assert ErlangRedHelpers.csv_decode_as_rfc_4180("name,age\njohn,27") == [
             ["john", "27"]
           ]

    assert ErlangRedHelpers.csv_decode_as_rfc_4180("name,age\njohn,27", [
             {:skip_headers, false}
           ]) ==
             [["name", "age"], ["john", "27"]]
  end

  test "nimble own csv parser" do
    assert SemiColonSep.parse_string("name;age\njim;27\n") == [["jim", "27"]]
  end

  test "does i2c detect devices function" do
    ErlangRedHelpers.detect_i2c_devices()
  end
end
