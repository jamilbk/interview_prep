defmodule InterviewPrep.Mergesort do
  @moduledoc """
  https://en.wikipedia.org/wiki/Mergesort
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
      iex> mergesort([98, 101, 107, 110, -5, 2, 3, 77, 44, 51, 101])
      [-5, 2, 3, 44, 51, 77, 98, 101, 101, 107, 110]
      iex> mergesort([1, 2, 3])
      [1, 2, 3]
      iex> mergesort(["c", "b"])
      ["b", "c"]
      iex> mergesort([:hello])
      [:hello]

  """
  def mergesort(list) when length(list) <= 1, do: list

  def mergesort(list) when is_list(list) do
    {left, right} = Enum.split(list, div(length(list), 2))

    merge(
      mergesort(left),
      mergesort(right)
    )
  end

  defp merge([], list2), do: list2
  defp merge(list1, []), do: list1

  defp merge(list1, list2) do
    [head1 | new_list1] = list1
    [head2 | new_list2] = list2

    if head1 < head2 do
      [head1 | merge(new_list1, list2)]
    else
      [head2 | merge(list1, new_list2)]
    end
  end
end
