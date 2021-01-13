defmodule InterviewPrep.Quicksort do
  @moduledoc """
  https://en.wikipedia.org/wiki/Quicksort
  """

  @doc """
  Quicksort.

  Sorts the given List using built-in comparison operators using the
  popular quicksort algorithm.

  In Elixir, terms of different data types can be compared. The overall sorting order is:

  number < atom < reference < function < port < pid < tuple < map < list < bitstring

  ## Examples

      iex> import InterviewPrep.Quicksort
      iex> quicksort([3, 2, 1])
      [1, 2, 3]
      iex> quicksort([])
      []
      iex> quicksort([98, 101, 107, 110, -5, 2, 3, 77, 44, 51, 101])
      [-5, 2, 3, 44, 51, 77, 98, 101, 101, 107, 110]
      iex> quicksort([1, 2, 3])
      [1, 2, 3]
      iex> quicksort(["c", "b"])
      ["b", "c"]
      iex> quicksort([:hello])
      [:hello]

  """
  def quicksort(list) when length(list) <= 1, do: list

  def quicksort(list) when is_list(list) do
    # Set pivot to value of first element
    [pivot | new_list] = list

    # Build list of smaller elements
    left = Enum.filter(new_list, fn num -> num < pivot end)

    # Build list of larger elements
    right = Enum.filter(new_list, fn num -> num >= pivot end)

    # Recurse and concatenate lists
    quicksort(left) ++ [pivot] ++ quicksort(right)
  end
end
