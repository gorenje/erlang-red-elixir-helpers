defmodule ErlangRedHelpersTest do
  use ExUnit.Case
  doctest ErlangRedHelpers

  ErlangRedHelpers.define_csv_parser(SemiColonSep, separator: ";", escape: "\"")

  test "markdown basic" do
    assert ErlangRedHelpers.markdown_to_html("# hello world") ==
             {:ok, "<h1>hello world</h1>"}
  end

  test "markdown - support striketrhough by default" do
    assert ErlangRedHelpers.markdown_to_html("~nope~") ==
             {:ok, "<p><del>nope</del></p>"}
  end

  test "markdown - support inline html by default" do
    assert ErlangRedHelpers.markdown_to_html("<center><b>hello world</b></center>") ==
             {:ok, "<center><b>hello world</b></center>"}
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
