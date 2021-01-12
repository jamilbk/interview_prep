defmodule InterviewPrep.Mergesort do
  @moduledoc """
  """

  @doc """
  Mergesort.

  Sorts the given List using built-in comparison operators using the
  popular mergesort algorithm.

  In Elixir, terms of different data types can be compared. The overall sorting order is:

  number < atom < reference < function < port < pid < tuple < map < list < bitstring

  ## Examples

      iex> import InterviewPrep.Mergesort
      iex> mergesort([3, 2, 1])
      [1, 2, 3]
      iex> mergesort([])
      []
      iex> mergesort([1, 2, 3])
      [1, 2, 3]
      iex> mergesort(["c", "b"])
      ["b", "c"]
      iex> mergesort([:hello])
      [:hello]

  """
  def mergesort(list) when length(list) <= 1, do: list
  def mergesort(list) when is_list(list) do
  end
end
