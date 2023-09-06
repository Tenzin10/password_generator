defmodule PasswordGenerator do
  @moduledoc """
  Generates random password depending on parameters, Modules main function is `generate(options)` , This function takes options Map.
    options example:
      options = %{
        "length" => "5",
        "numbers" => "false",
        "uppercase" => "false",
        "symbols" => "false"
      }
  """
  @allowed_options [:lenght, :numbers, :uppercase, :symbols]
  @doc """
  Hello world.

  ## Examples

      iex> PasswordGenerator.generate(options)
      "abcdef"

  """
  @spec generate(options :: Map()) :: {:ok, bitstring()} | {:error, bitstring()}

  def generate(options) do
    length = Map.has_key?(options, "length")
    validate_length(length, options)
  end

  defp validate_length(false, _options) do: {:error, "please provide a length"}

end
