defmodule ErlangRedHelpers do
  @moduledoc """
  A collction of helpers defined in Elixir but used by the Erlang codebase.
  """

  @doc """
  Convert Markdown content to HTML content.
  """
  def markdown_to_html(content) do
    Earmark.as_html(content)
  end

  def markdown_to_html(content, args) do
    Earmark.as_html(content, args)
  end

  @doc """
  CSV decoder.
  """
  def csv_decode_as_rfc_4180(string_content) do
    NimbleCSV.RFC4180.parse_string(string_content)
  end

  def csv_decode_as_rfc_4180(string_content, opts) do
    NimbleCSV.RFC4180.parse_string(string_content, opts)
  end

  def define_csv_parser(module, opts) do
    NimbleCSV.define(module, opts)
  end

  @doc """
  I2C detect devices
  """
  def detect_i2c_devices() do
    Circuits.I2C.detect_devices()
  end
end
